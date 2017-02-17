.class final Lcl/birdie/transantiagomaster/MainActivity$35;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcl/birdie/transantiagomaster/MainActivity;->onShowComplainDialog(Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$ComplainDialogParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcl/birdie/transantiagomaster/MainActivity;

.field private final synthetic val$params:Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$ComplainDialogParams;


# direct methods
.method constructor <init>(Lcl/birdie/transantiagomaster/MainActivity;Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$ComplainDialogParams;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcl/birdie/transantiagomaster/MainActivity$35;->this$0:Lcl/birdie/transantiagomaster/MainActivity;

    iput-object p2, p0, Lcl/birdie/transantiagomaster/MainActivity$35;->val$params:Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$ComplainDialogParams;

    .line 2917
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcl/birdie/transantiagomaster/MainActivity$35;)Lcl/birdie/transantiagomaster/MainActivity;
    .locals 1

    .prologue
    .line 2917
    iget-object v0, p0, Lcl/birdie/transantiagomaster/MainActivity$35;->this$0:Lcl/birdie/transantiagomaster/MainActivity;

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2920
    iget-object v4, p0, Lcl/birdie/transantiagomaster/MainActivity$35;->this$0:Lcl/birdie/transantiagomaster/MainActivity;

    invoke-virtual {v4}, Lcl/birdie/transantiagomaster/MainActivity;->onShowContent()V

    .line 2922
    iget-object v4, p0, Lcl/birdie/transantiagomaster/MainActivity$35;->val$params:Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$ComplainDialogParams;

    if-eqz v4, :cond_0

    .line 2923
    iget-object v2, p0, Lcl/birdie/transantiagomaster/MainActivity$35;->this$0:Lcl/birdie/transantiagomaster/MainActivity;

    iget-object v3, p0, Lcl/birdie/transantiagomaster/MainActivity$35;->val$params:Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$ComplainDialogParams;

    const-string v4, "complain"

    invoke-static {v2, v3, v4}, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment;->showDialog(Lcom/actionbarsherlock/app/SherlockFragmentActivity;Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$ComplainDialogParams;Ljava/lang/String;)V

    .line 2968
    :goto_0
    return-void

    .line 2926
    :cond_0
    invoke-static {}, Lcl/birdie/transantiagomaster/Pantalla;->getGPSLatLng()Lcl/birdie/toolkit/LatLng;

    move-result-object v4

    if-nez v4, :cond_1

    .line 2927
    iget-object v2, p0, Lcl/birdie/transantiagomaster/MainActivity$35;->this$0:Lcl/birdie/transantiagomaster/MainActivity;

    iget-object v3, p0, Lcl/birdie/transantiagomaster/MainActivity$35;->this$0:Lcl/birdie/transantiagomaster/MainActivity;

    const v4, 0x7f06009d

    invoke-virtual {v3, v4}, Lcl/birdie/transantiagomaster/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcl/birdie/transantiagomaster/MainActivity;->onError(Ljava/lang/String;)V

    goto :goto_0

    .line 2930
    :cond_1
    invoke-static {}, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions;->IsSessionOpen()Z

    move-result v4

    if-nez v4, :cond_2

    .line 2931
    invoke-static {}, Lcl/birdie/transantiagomaster/twitter/TwitterHandler;->estaConectado()Z

    move-result v4

    if-nez v4, :cond_2

    .line 2932
    iget-object v2, p0, Lcl/birdie/transantiagomaster/MainActivity$35;->this$0:Lcl/birdie/transantiagomaster/MainActivity;

    sget-object v3, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener$LoginRequest;->SOCIAL_ANY:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener$LoginRequest;

    new-instance v4, Lcl/birdie/transantiagomaster/MainActivity$35$1;

    invoke-direct {v4, p0}, Lcl/birdie/transantiagomaster/MainActivity$35$1;-><init>(Lcl/birdie/transantiagomaster/MainActivity$35;)V

    invoke-virtual {v2, v3, v4}, Lcl/birdie/transantiagomaster/MainActivity;->onRequestSocialLogin(Lcl/birdie/transantiagomaster/facebook/TSMCommandListener$LoginRequest;Lcl/birdie/transantiagomaster/facebook/IFBCallback;)V

    goto :goto_0

    .line 2946
    :cond_2
    invoke-static {}, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions;->getUserId()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-static {}, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions;->getUserToken()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    move v0, v2

    .line 2947
    .local v0, "fbFail":Z
    :goto_1
    sget-object v4, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->prefs:Lcl/birdie/params/Preferencias;

    iget-object v4, v4, Lcl/birdie/params/Preferencias;->twitter_token:Ljava/lang/String;

    if-eqz v4, :cond_4

    sget-object v4, Lcl/birdie/transantiagomaster/TransantiagoMasterApplication;->prefs:Lcl/birdie/params/Preferencias;

    iget-object v4, v4, Lcl/birdie/params/Preferencias;->twitter_secret:Ljava/lang/String;

    if-eqz v4, :cond_4

    move v1, v2

    .line 2948
    .local v1, "twFail":Z
    :goto_2
    if-eqz v0, :cond_5

    if-eqz v1, :cond_5

    .line 2951
    invoke-static {}, Lcl/birdie/transantiagomaster/facebook/FacebookConectActions;->CerrarSesion()Z

    .line 2953
    iget-object v2, p0, Lcl/birdie/transantiagomaster/MainActivity$35;->this$0:Lcl/birdie/transantiagomaster/MainActivity;

    const v3, 0x7f060156

    invoke-virtual {v2, v3}, Lcl/birdie/transantiagomaster/MainActivity;->onToast(I)V

    .line 2954
    iget-object v2, p0, Lcl/birdie/transantiagomaster/MainActivity$35;->this$0:Lcl/birdie/transantiagomaster/MainActivity;

    sget-object v3, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener$LoginRequest;->SOCIAL_ANY:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener$LoginRequest;

    new-instance v4, Lcl/birdie/transantiagomaster/MainActivity$35$2;

    invoke-direct {v4, p0}, Lcl/birdie/transantiagomaster/MainActivity$35$2;-><init>(Lcl/birdie/transantiagomaster/MainActivity$35;)V

    invoke-virtual {v2, v3, v4}, Lcl/birdie/transantiagomaster/MainActivity;->onRequestSocialLogin(Lcl/birdie/transantiagomaster/facebook/TSMCommandListener$LoginRequest;Lcl/birdie/transantiagomaster/facebook/IFBCallback;)V

    goto :goto_0

    .end local v0    # "fbFail":Z
    .end local v1    # "twFail":Z
    :cond_3
    move v0, v3

    .line 2946
    goto :goto_1

    .restart local v0    # "fbFail":Z
    :cond_4
    move v1, v3

    .line 2947
    goto :goto_2

    .line 2967
    .restart local v1    # "twFail":Z
    :cond_5
    iget-object v2, p0, Lcl/birdie/transantiagomaster/MainActivity$35;->this$0:Lcl/birdie/transantiagomaster/MainActivity;

    const/4 v3, 0x0

    const-string v4, "complain"

    invoke-static {v2, v3, v4}, Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment;->showDialog(Lcom/actionbarsherlock/app/SherlockFragmentActivity;Lcl/birdie/transantiagomaster/dialogos/ComplainDialogFragment$ComplainDialogParams;Ljava/lang/String;)V

    goto :goto_0
.end method
