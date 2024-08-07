// ignore_for_file: non_constant_identifier_names

@JS('auth0')
library auth0;

import 'dart:js_interop';

extension type AuthorizationParams._(JSObject _) implements JSObject {
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

extension type RedirectLoginOptions._(JSObject _) implements JSObject {
  external factory RedirectLoginOptions({
    AuthorizationParams? authorizationParams,
    String? fragment
  });
}

extension type Auth0ClientInfo._(JSObject _) implements JSObject {
  external factory Auth0ClientInfo({
    JSObject? env,
    required String name,
    required String version
  });
}

extension type Auth0ClientOptions._(JSObject _) implements JSObject {
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

extension type GetTokenSilentlyAuthParams._(JSObject _) implements JSObject {
  external factory GetTokenSilentlyAuthParams({
    String? audience,
    String? scope
  });
}

extension type GetTokenSilentlyOptions._(JSObject _) implements JSObject {
  external factory GetTokenSilentlyOptions({
    GetTokenSilentlyAuthParams? authorizationParams,
    String? cacheMode,
    num? timeoutInSeconds,
    bool? detailedResponse
  });
}

extension type WebCredentials._(JSObject _) implements JSObject {
  external String get access_token;
  external String get id_token;
  external num get expires_in;
  external String? get refresh_token;
  external String? get scope;
}

extension type LogoutParams._(JSObject _) implements JSObject {
  external factory LogoutParams({
    String? returnTo,
    bool? federated
  });
}

extension type LogoutOptions._(JSObject _) implements JSObject {
  external factory LogoutOptions({LogoutParams? logoutParams});
}

extension type PopupLoginOptions._(JSObject _) implements JSObject {
  external factory PopupLoginOptions({AuthorizationParams? authorizationParams});
}

extension type PopupConfigOptions._(JSObject _) implements JSObject {
  external factory PopupConfigOptions({
    JSObject? popup,
    int? timeoutInSeconds
  });
}

@JS('Auth0Client')
extension type Auth0Client._(JSObject _) implements JSObject {
  external factory Auth0Client(Auth0ClientOptions options);
  
  external JSPromise loginWithRedirect([RedirectLoginOptions? options]);
  external JSPromise loginWithPopup([PopupLoginOptions? options, PopupConfigOptions? config]);
  external JSPromise handleRedirectCallback([String? url]);
  external JSPromise checkSession();
  external JSPromise getTokenSilently([GetTokenSilentlyOptions? options]);
  external JSPromise isAuthenticated();
  external JSPromise logout([LogoutOptions? logoutParams]);
}