package com.example.action_process_text

import android.content.Intent
import android.os.Bundle
import io.flutter.plugin.common.MethodChannel


/** ActionProcessTextPlugin */
public class ActionProcessTextPlugin : io.flutter.app.FlutterActivity() {

  companion object {
    const val CHANNEL = "action_process_text"
  }

  override fun onCreate(savedInstanceState: Bundle?) {
    super.onCreate(savedInstanceState)
    val channel = MethodChannel(flutterView, CHANNEL)
    if (intent.action == Intent.ACTION_PROCESS_TEXT) {
      val selectedText = intent.getStringExtra(Intent.EXTRA_PROCESS_TEXT) ?: ""
      channel.invokeMethod("copiedText", selectedText)
    }

  }
}



//public class ActionProcessTextPlugin: FlutterPlugin, ActivityAware {
//  /// The MethodChannel that will the communication between Flutter and native Android
//  ///
//  /// This local reference serves to register the plugin with the Flutter Engine and unregister it
//  /// when the Flutter Engine is detached from the Activity
//  private lateinit var channel : MethodChannel
//
//  override fun onAttachedToEngine(@NonNull flutterPluginBinding: FlutterPlugin.FlutterPluginBinding) {
//    channel = MethodChannel(flutterPluginBinding.getFlutterEngine().getDartExecutor(), "action_process_text")
//    //channel.setMethodCallHandler(this);
//
//  }
//  override fun onDetachedFromEngine(@NonNull binding: FlutterPlugin.FlutterPluginBinding) {
//    channel.setMethodCallHandler(null)
//  }
//
//  override fun onAttachedToActivity(binding: ActivityPluginBinding) {
//    print("onCreate called")
//    if (intent.action == Intent.ACTION_PROCESS_TEXT) {
//
//      val selectedText = intent.getStringExtra(Intent.EXTRA_PROCESS_TEXT) ?: ""
//
//      channel.invokeMethod("copiedText", selectedText)
//
//
//    }
//  }
//
//  override fun onDetachedFromActivityForConfigChanges() {
//    TODO("Not yet implemented")
//  }
//
//  override fun onReattachedToActivityForConfigChanges(binding: ActivityPluginBinding) {
//    TODO("Not yet implemented")
//  }
//
//  override fun onDetachedFromActivity() {
//    TODO("Not yet implemented")
//  }
//
//}
