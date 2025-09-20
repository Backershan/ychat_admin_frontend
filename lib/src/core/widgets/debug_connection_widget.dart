import 'package:flutter/material.dart';
import 'package:y_chat_admin/src/core/utils/connection_test_utils.dart';
import 'package:y_chat_admin/src/core/utils/debug_api_utils.dart';
import 'package:y_chat_admin/src/core/utils/responsive.dart';

/// Debug widget to test backend connection
class DebugConnectionWidget extends StatefulWidget {
  const DebugConnectionWidget({super.key});

  @override
  State<DebugConnectionWidget> createState() => _DebugConnectionWidgetState();
}

class _DebugConnectionWidgetState extends State<DebugConnectionWidget> {
  bool _isTesting = false;
  ConnectionTestResult? _result;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(ResponsiveSpacing.md),
      child: Padding(
        padding: EdgeInsets.all(ResponsiveSpacing.lg),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Backend Connection Test',
              style: ResponsiveText.large,
            ),
            SizedBox(height: ResponsiveSpacing.md),
            
            if (_isTesting) ...[
              const Center(
                child: CircularProgressIndicator(),
              ),
              SizedBox(height: ResponsiveSpacing.md),
              Text(
                'Testing connection...',
                style: ResponsiveText.medium,
              ),
            ] else ...[
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: _testConnection,
                      child: const Text('Test Connection'),
                    ),
                  ),
                  SizedBox(width: ResponsiveSpacing.sm),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: _testApiEndpoints,
                      child: const Text('Test API'),
                    ),
                  ),
                ],
              ),
            ],
            
            if (_result != null) ...[
              SizedBox(height: ResponsiveSpacing.lg),
              Container(
                padding: EdgeInsets.all(ResponsiveSpacing.md),
                decoration: BoxDecoration(
                  color: _result!.isConnected 
                      ? Colors.green.withValues(alpha: 0.1)
                      : Colors.red.withValues(alpha: 0.1),
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: _result!.isConnected ? Colors.green : Colors.red,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(
                          _result!.isConnected ? Icons.check_circle : Icons.error,
                          color: _result!.isConnected ? Colors.green : Colors.red,
                        ),
                        SizedBox(width: ResponsiveSpacing.sm),
                        Text(
                          _result!.isConnected ? 'Connected' : 'Connection Failed',
                          style: ResponsiveText.medium.copyWith(
                            color: _result!.isConnected ? Colors.green : Colors.red,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: ResponsiveSpacing.sm),
                    Text(
                      _result!.message,
                      style: ResponsiveText.small,
                    ),
                    if (_result!.workingUrl != null) ...[
                      SizedBox(height: ResponsiveSpacing.sm),
                      Text(
                        'Working URL: ${_result!.workingUrl}',
                        style: ResponsiveText.small.copyWith(
                          fontFamily: 'monospace',
                        ),
                      ),
                    ],
                  ],
                ),
              ),
            ],
            
            if (_result != null && !_result!.isConnected) ...[
              SizedBox(height: ResponsiveSpacing.lg),
              Text(
                'Suggested Solutions:',
                style: ResponsiveText.medium.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: ResponsiveSpacing.sm),
              ...ConnectionTestUtils.getSuggestedSolutions().map(
                (solution) => Padding(
                  padding: EdgeInsets.only(bottom: ResponsiveSpacing.xs),
                  child: Text(
                    solution,
                    style: ResponsiveText.small,
                  ),
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }

  Future<void> _testConnection() async {
    setState(() {
      _isTesting = true;
      _result = null;
    });

    try {
      final result = await ConnectionTestUtils.testConnection();
      setState(() {
        _result = result;
        _isTesting = false;
      });
    } catch (e) {
      setState(() {
        _result = ConnectionTestResult(
          isConnected: false,
          workingUrl: null,
          message: 'Error testing connection: $e',
        );
        _isTesting = false;
      });
    }
  }

  Future<void> _testApiEndpoints() async {
    setState(() {
      _isTesting = true;
      _result = null;
    });

    try {
      // Test basic connectivity first
      await DebugApiUtils.testBasicConnectivity();
      
      // Test register endpoint
      await DebugApiUtils.testRegisterEndpoint();
      
      // Test login endpoint
      await DebugApiUtils.testLoginEndpoint();
      
      setState(() {
        _result = ConnectionTestResult(
          isConnected: true,
          workingUrl: 'API endpoints tested - check console for details',
          message: 'API testing completed. Check console logs for detailed results.',
        );
        _isTesting = false;
      });
    } catch (e) {
      setState(() {
        _result = ConnectionTestResult(
          isConnected: false,
          workingUrl: null,
          message: 'Error testing API endpoints: $e',
        );
        _isTesting = false;
      });
    }
  }
}
