using ReactNative.Bridge;
using System;
using System.Collections.Generic;
using Windows.ApplicationModel.Core;
using Windows.UI.Core;

namespace Yandex.Map.Kit.RNYandexMapKit
{
    /// <summary>
    /// A module that allows JS to share data.
    /// </summary>
    class RNYandexMapKitModule : NativeModuleBase
    {
        /// <summary>
        /// Instantiates the <see cref="RNYandexMapKitModule"/>.
        /// </summary>
        internal RNYandexMapKitModule()
        {

        }

        /// <summary>
        /// The name of the native module.
        /// </summary>
        public override string Name
        {
            get
            {
                return "RNYandexMapKit";
            }
        }
    }
}
