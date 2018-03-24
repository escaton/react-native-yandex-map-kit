
package com.yandex.RNYandexMapKit;

import com.facebook.drawee.backends.pipeline.Fresco;
import com.facebook.drawee.controller.AbstractDraweeControllerBuilder;
import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactContextBaseJavaModule;
import com.facebook.react.bridge.ReactMethod;
import com.facebook.react.bridge.Callback;
import com.facebook.react.uimanager.SimpleViewManager;
import com.facebook.react.uimanager.ThemedReactContext;
import com.facebook.react.views.image.GlobalImageLoadListener;
import com.facebook.react.views.image.ReactImageView;

import javax.annotation.Nullable;

public class RNYandexMapKitModule extends ReactContextBaseJavaModule {

  private final ReactApplicationContext reactContext;

  public RNYandexMapKitModule(ReactApplicationContext reactContext) {
    super(reactContext);
    this.reactContext = reactContext;
  }

  @Override
  public String getName() {
    return "RNYandexMapKit";
  }

  @ReactMethod
  public void getString(Callback successCallback) { successCallback.invoke("Test"); }
}