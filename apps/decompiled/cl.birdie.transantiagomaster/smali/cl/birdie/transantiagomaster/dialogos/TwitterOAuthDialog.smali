.class public final Lcl/birdie/transantiagomaster/dialogos/TwitterOAuthDialog;
.super Lcom/actionbarsherlock/app/SherlockFragment;
.source "TwitterOAuthDialog.java"

# interfaces
.implements Lcom/twitterapime/xauth/ui/OAuthDialogListener;


# instance fields
.field private final CALLBACK_URL:Ljava/lang/String;

.field private final CONSUMER_KEY:Ljava/lang/String;

.field private final CONSUMER_SECRET:Ljava/lang/String;

.field private callback:Lcl/birdie/transantiagomaster/facebook/IFBCallback;

.field private loginWrapper:Limpl/android/com/twitterapime/xauth/ui/WebViewOAuthDialogWrapper;

.field mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

.field private tryAgainError:Ljava/lang/Runnable;


# direct methods
.method private constructor <init>(Lcl/birdie/transantiagomaster/facebook/IFBCallback;)V
    .locals 1
    .param p1, "callback"    # Lcl/birdie/transantiagomaster/facebook/IFBCallback;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    .line 53
    const-string v0, "gu4fZMyFBXQY1GNeaPigAg"

    iput-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/TwitterOAuthDialog;->CONSUMER_KEY:Ljava/lang/String;

    .line 58
    const-string v0, "R8vI11GWCqkiZ0JK4OYdbjWnqOpaUC9rsqUK6nuuA"

    iput-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/TwitterOAuthDialog;->CONSUMER_SECRET:Ljava/lang/String;

    .line 63
    const-string v0, "http://www.birdie.cl/maps/callback.php"

    iput-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/TwitterOAuthDialog;->CALLBACK_URL:Ljava/lang/String;

    .line 47
    iput-object p1, p0, Lcl/birdie/transantiagomaster/dialogos/TwitterOAuthDialog;->callback:Lcl/birdie/transantiagomaster/facebook/IFBCallback;

    .line 48
    return-void
.end method

.method static synthetic access$0(Lcl/birdie/transantiagomaster/dialogos/TwitterOAuthDialog;)Lcl/birdie/transantiagomaster/facebook/IFBCallback;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/TwitterOAuthDialog;->callback:Lcl/birdie/transantiagomaster/facebook/IFBCallback;

    return-object v0
.end method

.method public static dismiss(Lcom/actionbarsherlock/app/SherlockFragmentActivity;Ljava/lang/String;)V
    .locals 5
    .param p0, "activity"    # Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 287
    if-nez p0, :cond_0

    .line 290
    const-string v3, "TwitterOAuthDialog"

    const-string v4, "dismiss: activity null!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    :goto_0
    return-void

    .line 293
    :cond_0
    invoke-virtual {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    .line 294
    .local v2, "prev":Landroid/support/v4/app/Fragment;
    if-eqz v2, :cond_1

    .line 296
    const-string v3, "TwitterOAuthDialog"

    const-string v4, "prev found!"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    invoke-virtual {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 298
    .local v1, "ft":Landroid/support/v4/app/FragmentTransaction;
    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 299
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 302
    .end local v1    # "ft":Landroid/support/v4/app/FragmentTransaction;
    :cond_1
    invoke-virtual {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    .line 303
    .local v0, "count":I
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "count: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 304
    invoke-virtual {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    goto :goto_0
.end method

.method public static show(Lcom/actionbarsherlock/app/SherlockFragmentActivity;Ljava/lang/String;Lcl/birdie/transantiagomaster/facebook/IFBCallback;)V
    .locals 5
    .param p0, "activity"    # Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "caller"    # Lcl/birdie/transantiagomaster/facebook/IFBCallback;

    .prologue
    .line 265
    if-nez p0, :cond_0

    .line 268
    const-string v3, "TwitterOAuthDialog"

    const-string v4, "show: activity null!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    :goto_0
    return-void

    .line 271
    :cond_0
    invoke-virtual {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 272
    .local v1, "ft":Landroid/support/v4/app/FragmentTransaction;
    invoke-virtual {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    .line 273
    .local v2, "prev":Landroid/support/v4/app/Fragment;
    if-eqz v2, :cond_1

    .line 275
    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 279
    :cond_1
    new-instance v0, Lcl/birdie/transantiagomaster/dialogos/TwitterOAuthDialog;

    invoke-direct {v0, p2}, Lcl/birdie/transantiagomaster/dialogos/TwitterOAuthDialog;-><init>(Lcl/birdie/transantiagomaster/facebook/IFBCallback;)V

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "tag"

    invoke-virtual {v3, v4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcl/birdie/transantiagomaster/dialogos/TwitterOAuthDialog;->setArguments(Landroid/os/Bundle;)V

    .line 280
    .local v0, "fragment":Lcom/actionbarsherlock/app/SherlockFragment;
    const v3, 0x1020002

    invoke-virtual {v1, v3, v0, p1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 281
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 282
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_0
.end method


# virtual methods
.method protected final login()V
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/TwitterOAuthDialog;->loginWrapper:Limpl/android/com/twitterapime/xauth/ui/WebViewOAuthDialogWrapper;

    invoke-virtual {v0}, Limpl/android/com/twitterapime/xauth/ui/WebViewOAuthDialogWrapper;->login()V

    .line 140
    return-void
.end method

.method public final onAccessDenied$552c4e01()V
    .locals 2

    .prologue
    .line 226
    const-string v0, "TwitterOAuthDialog"

    const-string v1, "onAccessDenied"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    iget-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/TwitterOAuthDialog;->callback:Lcl/birdie/transantiagomaster/facebook/IFBCallback;

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/TwitterOAuthDialog;->callback:Lcl/birdie/transantiagomaster/facebook/IFBCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcl/birdie/transantiagomaster/facebook/IFBCallback;->onError(Ljava/lang/Object;)V

    .line 229
    :cond_0
    return-void
.end method

.method public final onAttach(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 69
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onAttach(Landroid/app/Activity;)V

    .line 71
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    move-object v1, v0

    iput-object v1, p0, Lcl/birdie/transantiagomaster/dialogos/TwitterOAuthDialog;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    return-void

    .line 73
    :catch_0
    move-exception v1

    new-instance v1, Ljava/lang/ClassCastException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " must implement OnArticleSelectedListener"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final onAuthorize(Lcom/twitterapime/xauth/Token;)V
    .locals 6
    .param p1, "accessToken"    # Lcom/twitterapime/xauth/Token;

    .prologue
    const/4 v5, 0x0

    .line 171
    new-instance v2, Lcom/twitterapime/rest/Credential;

    const-string v3, "gu4fZMyFBXQY1GNeaPigAg"

    const-string v4, "R8vI11GWCqkiZ0JK4OYdbjWnqOpaUC9rsqUK6nuuA"

    invoke-direct {v2, v3, v4, p1}, Lcom/twitterapime/rest/Credential;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/twitterapime/xauth/Token;)V

    .line 173
    invoke-static {v2}, Lcom/twitterapime/rest/UserAccountManager;->getInstance(Lcom/twitterapime/rest/Credential;)Lcom/twitterapime/rest/UserAccountManager;

    move-result-object v1

    .line 176
    .local v1, "uam":Lcom/twitterapime/rest/UserAccountManager;
    :try_start_0
    invoke-virtual {v1}, Lcom/twitterapime/rest/UserAccountManager;->verifyCredential()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 180
    const-string v2, "TwitterOAuthDialog"

    const-string v3, "exito al verificar credenciales"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    invoke-static {v1}, Lcl/birdie/transantiagomaster/twitter/TwitterHandler;->guardar(Lcom/twitterapime/rest/UserAccountManager;)V

    .line 185
    iget-object v2, p0, Lcl/birdie/transantiagomaster/dialogos/TwitterOAuthDialog;->callback:Lcl/birdie/transantiagomaster/facebook/IFBCallback;

    if-eqz v2, :cond_0

    .line 186
    iget-object v2, p0, Lcl/birdie/transantiagomaster/dialogos/TwitterOAuthDialog;->callback:Lcl/birdie/transantiagomaster/facebook/IFBCallback;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcl/birdie/transantiagomaster/facebook/IFBCallback;->onSuccess(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    :cond_0
    :goto_0
    return-void

    .line 202
    :catch_0
    move-exception v0

    .line 204
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "TwitterOAuthDialog"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "excepcion: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 206
    iget-object v2, p0, Lcl/birdie/transantiagomaster/dialogos/TwitterOAuthDialog;->callback:Lcl/birdie/transantiagomaster/facebook/IFBCallback;

    if-eqz v2, :cond_0

    .line 207
    iget-object v2, p0, Lcl/birdie/transantiagomaster/dialogos/TwitterOAuthDialog;->callback:Lcl/birdie/transantiagomaster/facebook/IFBCallback;

    invoke-interface {v2, v5}, Lcl/birdie/transantiagomaster/facebook/IFBCallback;->onError(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 82
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onCreate(Landroid/os/Bundle;)V

    .line 83
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcl/birdie/transantiagomaster/dialogos/TwitterOAuthDialog;->setRetainInstance(Z)V

    .line 84
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 93
    new-instance v0, Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/dialogos/TwitterOAuthDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 94
    .local v0, "webView":Landroid/webkit/WebView;
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 100
    new-instance v1, Lcl/birdie/transantiagomaster/dialogos/TwitterOAuthDialog$1;

    invoke-direct {v1, p0}, Lcl/birdie/transantiagomaster/dialogos/TwitterOAuthDialog$1;-><init>(Lcl/birdie/transantiagomaster/dialogos/TwitterOAuthDialog;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 108
    new-instance v1, Limpl/android/com/twitterapime/xauth/ui/WebViewOAuthDialogWrapper;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Limpl/android/com/twitterapime/xauth/ui/WebViewOAuthDialogWrapper;-><init>(Landroid/webkit/WebView;B)V

    .line 107
    iput-object v1, p0, Lcl/birdie/transantiagomaster/dialogos/TwitterOAuthDialog;->loginWrapper:Limpl/android/com/twitterapime/xauth/ui/WebViewOAuthDialogWrapper;

    .line 110
    iget-object v1, p0, Lcl/birdie/transantiagomaster/dialogos/TwitterOAuthDialog;->loginWrapper:Limpl/android/com/twitterapime/xauth/ui/WebViewOAuthDialogWrapper;

    const-string v2, "gu4fZMyFBXQY1GNeaPigAg"

    invoke-virtual {v1, v2}, Limpl/android/com/twitterapime/xauth/ui/WebViewOAuthDialogWrapper;->setConsumerKey(Ljava/lang/String;)V

    .line 111
    iget-object v1, p0, Lcl/birdie/transantiagomaster/dialogos/TwitterOAuthDialog;->loginWrapper:Limpl/android/com/twitterapime/xauth/ui/WebViewOAuthDialogWrapper;

    const-string v2, "R8vI11GWCqkiZ0JK4OYdbjWnqOpaUC9rsqUK6nuuA"

    invoke-virtual {v1, v2}, Limpl/android/com/twitterapime/xauth/ui/WebViewOAuthDialogWrapper;->setConsumerSecret(Ljava/lang/String;)V

    .line 112
    iget-object v1, p0, Lcl/birdie/transantiagomaster/dialogos/TwitterOAuthDialog;->loginWrapper:Limpl/android/com/twitterapime/xauth/ui/WebViewOAuthDialogWrapper;

    const-string v2, "http://www.birdie.cl/maps/callback.php"

    invoke-virtual {v1, v2}, Limpl/android/com/twitterapime/xauth/ui/WebViewOAuthDialogWrapper;->setCallbackUrl(Ljava/lang/String;)V

    .line 113
    iget-object v1, p0, Lcl/birdie/transantiagomaster/dialogos/TwitterOAuthDialog;->loginWrapper:Limpl/android/com/twitterapime/xauth/ui/WebViewOAuthDialogWrapper;

    invoke-virtual {v1, p0}, Limpl/android/com/twitterapime/xauth/ui/WebViewOAuthDialogWrapper;->setOAuthListener(Lcom/twitterapime/xauth/ui/OAuthDialogListener;)V

    .line 116
    iget-object v1, p0, Lcl/birdie/transantiagomaster/dialogos/TwitterOAuthDialog;->loginWrapper:Limpl/android/com/twitterapime/xauth/ui/WebViewOAuthDialogWrapper;

    const-string v2, "<html><body style=\'background-color:white\'/></html>"

    invoke-virtual {v1, v2}, Limpl/android/com/twitterapime/xauth/ui/WebViewOAuthDialogWrapper;->setCustomSuccessPageHtml(Ljava/lang/String;)V

    .line 119
    iget-object v1, p0, Lcl/birdie/transantiagomaster/dialogos/TwitterOAuthDialog;->loginWrapper:Limpl/android/com/twitterapime/xauth/ui/WebViewOAuthDialogWrapper;

    const-string v2, "<html><body style=\'background-color:white\'/></html>"

    invoke-virtual {v1, v2}, Limpl/android/com/twitterapime/xauth/ui/WebViewOAuthDialogWrapper;->setCustomDeniedPageHtml(Ljava/lang/String;)V

    .line 120
    iget-object v1, p0, Lcl/birdie/transantiagomaster/dialogos/TwitterOAuthDialog;->loginWrapper:Limpl/android/com/twitterapime/xauth/ui/WebViewOAuthDialogWrapper;

    const-string v2, "<html><body style=\'background-color:white\'/></html>"

    invoke-virtual {v1, v2}, Limpl/android/com/twitterapime/xauth/ui/WebViewOAuthDialogWrapper;->setCustomErrorPageHtml(Ljava/lang/String;)V

    .line 123
    iget-object v1, p0, Lcl/birdie/transantiagomaster/dialogos/TwitterOAuthDialog;->loginWrapper:Limpl/android/com/twitterapime/xauth/ui/WebViewOAuthDialogWrapper;

    invoke-virtual {v1}, Limpl/android/com/twitterapime/xauth/ui/WebViewOAuthDialogWrapper;->login()V

    .line 125
    new-instance v1, Lcl/birdie/transantiagomaster/dialogos/TwitterOAuthDialog$2;

    invoke-direct {v1, p0}, Lcl/birdie/transantiagomaster/dialogos/TwitterOAuthDialog$2;-><init>(Lcl/birdie/transantiagomaster/dialogos/TwitterOAuthDialog;)V

    iput-object v1, p0, Lcl/birdie/transantiagomaster/dialogos/TwitterOAuthDialog;->tryAgainError:Ljava/lang/Runnable;

    .line 131
    return-object v0
.end method

.method public final onFail$16da05f7()V
    .locals 2

    .prologue
    .line 241
    const-string v0, "TwitterOAuthDialog"

    const-string v1, "onFail"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    iget-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/TwitterOAuthDialog;->callback:Lcl/birdie/transantiagomaster/facebook/IFBCallback;

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/TwitterOAuthDialog;->callback:Lcl/birdie/transantiagomaster/facebook/IFBCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcl/birdie/transantiagomaster/facebook/IFBCallback;->onError(Ljava/lang/Object;)V

    .line 244
    :cond_0
    return-void
.end method

.method protected final tryAgain$13462e()V
    .locals 3

    .prologue
    .line 143
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/dialogos/TwitterOAuthDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 144
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f060049

    invoke-virtual {p0, v1}, Lcl/birdie/transantiagomaster/dialogos/TwitterOAuthDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 145
    const v1, 0x7f0600b6

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 146
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 148
    const v1, 0x7f060079

    invoke-virtual {p0, v1}, Lcl/birdie/transantiagomaster/dialogos/TwitterOAuthDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcl/birdie/transantiagomaster/dialogos/TwitterOAuthDialog$3;

    invoke-direct {v2, p0}, Lcl/birdie/transantiagomaster/dialogos/TwitterOAuthDialog$3;-><init>(Lcl/birdie/transantiagomaster/dialogos/TwitterOAuthDialog;)V

    .line 147
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 155
    const v1, 0x7f060051

    .line 154
    invoke-virtual {p0, v1}, Lcl/birdie/transantiagomaster/dialogos/TwitterOAuthDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 155
    new-instance v2, Lcl/birdie/transantiagomaster/dialogos/TwitterOAuthDialog$4;

    invoke-direct {v2, p0}, Lcl/birdie/transantiagomaster/dialogos/TwitterOAuthDialog$4;-><init>(Lcl/birdie/transantiagomaster/dialogos/TwitterOAuthDialog;)V

    .line 153
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 163
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 164
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 165
    return-void
.end method
