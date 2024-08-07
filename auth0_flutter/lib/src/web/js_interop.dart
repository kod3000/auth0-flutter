// ignore_for_file: non_constant_identifier_names

@JS('auth0')
library auth0;

import 'dart:js_interop';

@JS()
@anonymous
class AuthorizationParams {
  external String? get audience;
  external String? get redirect_uri;
  external String? get acr_values;
  external String? get display;
  external String? get login_hint;
  external String? get prompt;
  external String? get screen_hint;
  external String? get id_token_hint;
  external int? get max_age;
  external String? get ui_locales;
  external String? get connection;
  external String? get invitation;
  external String? get organization;
  external String? get scope;

  external factory AuthorizationParams({
    String? audience,
    String? redirect_uri,
    String? acr_values,
    String? display,
    String? login_hint,
    String? prompt,
    String? screen_hint,
    String? id_token_hint,
    int? max_age,
    String? ui_locales,
    String? connection,
    String? invitation,
    String? organization,
    String? scope
  });
}

@JS()
@anonymous
class RedirectLoginOptions {
  external AuthorizationParams? get authorizationParams;
  external String? get fragment;

  external factory RedirectLoginOptions({
    AuthorizationParams? authorizationParams,
    String? fragment
  });
}

@JS()
@anonymous
abstract class Cache {
  external T get<T>(String key);
  external void remove(String key);
  external void set<T>(String key, T entry);
  external Future<List<String>> allKeys();
}

@JS()
@anonymous
class Auth0ClientInfo {
  external JSObject? get env;
  external String get name;
  external String get version;

  external factory Auth0ClientInfo({
    JSObject? env,
    required String name,
    required String version
  });
}

@JS()
@anonymous
class Auth0ClientOptions {
  external factory Auth0ClientOptions({
    required Auth0ClientInfo clientInfo,
    required String domain,
    required String clientId,
    int? authorizeTimeoutInSeconds,
    String? cacheLocation,
    String? cookieDomain,
    int? httpTimeoutInSeconds,
    String? issuer,
    int? leeway,
    bool? legacySameSiteCookie,
    int? sessionCheckExpiryDays,
    bool? useCookiesForTransactions,
    bool? useFormData,
    bool? useRefreshTokens,
    bool? useRefreshTokensFallback,
    AuthorizationParams? authorizationParams
  });
}

@JS()
@anonymous
class GetTokenSilentlyAuthParams {
  external String? get scope;
  external String? get audience;

  external factory GetTokenSilentlyAuthParams({
    String? audience,
    String? scope
  });
}

@JS()
@anonymous
class GetTokenSilentlyOptions {
  external GetTokenSilentlyAuthParams? get authorizationParams;
  external String? get cacheMode;
  external num? get timeoutInSeconds;
  external bool? get detailedResponse;

  external factory GetTokenSilentlyOptions({
    GetTokenSilentlyAuthParams? authorizationParams,
    String? cacheMode,
    num? timeoutInSeconds,
    bool? detailedResponse
  });
}

@JS()
@anonymous
class WebCredentials {
  external String get access_token;
  external String get id_token;
  external num get expires_in;
  external String? get refresh_token;
  external String? get scope;

  external factory WebCredentials({
    required String access_token,
    required String id_token,
    required num expires_in,
    String? refresh_token,
    String? scope
  });
}

@JS()
@anonymous
class LogoutParams {
  external String? get returnTo;
  external bool? get federated;

  external factory LogoutParams({
    String? returnTo,
    bool? federated
  });
}

@JS()
@anonymous
class LogoutOptions {
  external LogoutParams? get logoutParams;

  external factory LogoutOptions({LogoutParams? logoutParams});
}

@JS()
@anonymous
class PopupLoginOptions {
  external AuthorizationParams? get authorizationParams;

  external factory PopupLoginOptions({AuthorizationParams? authorizationParams});
}

@JS()
@anonymous
class PopupConfigOptions {
  external JSObject? get popup;
  external int? get timeoutInSeconds;

  external factory PopupConfigOptions({
    JSObject? popup,
    int? timeoutInSeconds
  });
}

@JS()
class Auth0Client {
  external factory Auth0Client(Auth0ClientOptions options);
  external Future<void> loginWithRedirect([RedirectLoginOptions? options]);
  external Future<void> loginWithPopup([PopupLoginOptions? options, PopupConfigOptions? config]);
  external Future<void> handleRedirectCallback([String? url]);
  external Future<void> checkSession();
  external Future<WebCredentials> getTokenSilently([GetTokenSilentlyOptions? options]);
  external Future<bool> isAuthenticated();
  external Future<void> logout([LogoutOptions? logoutParams]);
}