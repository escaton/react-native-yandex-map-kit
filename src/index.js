import PropTypes from 'prop-types';
import {requireNativeComponent, ViewPropTypes} from 'react-native';

var iface = {
  name: 'MapKit',
  propTypes: {
    ...ViewPropTypes, // include the default view properties
  },
};

export default requireNativeComponent('RNYandexMapKit', iface);