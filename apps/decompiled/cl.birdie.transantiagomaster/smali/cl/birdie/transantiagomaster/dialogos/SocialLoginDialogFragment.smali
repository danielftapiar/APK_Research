.class public final Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment;
.super Lcom/actionbarsherlock/app/SherlockDialogFragment;
.source "SocialLoginDialogFragment.java"


# static fields
.field private static synthetic $SWITCH_TABLE$cl$birdie$transantiagomaster$facebook$TSMCommandListener$LoginRequest:[I


# instance fields
.field private callback:Lcom/facebook/Session$StatusCallback;

.field private caller:Lcl/birdie/transantiagomaster/facebook/IFBCallback;

.field private mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

.field type:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener$LoginRequest;

.field private uiHelper:Lcom/facebook/UiLifecycleHelper;


# direct methods
.method private static synthetic $SWITCH_TABLE$cl$birdie$transantiagomaster$facebook$TSMCommandListener$LoginRequest()[I
    .locals 3

    .prologue
    .line 30
    sget-object v0, Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment;->$SWITCH_TABLE$cl$birdie$transantiagomaster$facebook$TSMCommandListener$LoginRequest:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener$LoginRequest;->values()[Lcl/birdie/transantiagomaster/facebook/TSMCommandListener$LoginRequest;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener$LoginRequest;->SOCIAL_ANY:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener$LoginRequest;

    invoke-virtual {v1}, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener$LoginRequest;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    sget-object v1, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener$LoginRequest;->SOCIAL_FACEBOOK:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener$LoginRequest;

    invoke-virtual {v1}, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener$LoginRequest;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    sget-object v1, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener$LoginRequest;->SOCIAL_TWITTER:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener$LoginRequest;

    invoke-virtual {v1}, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener$LoginRequest;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    sput-object v0, Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment;->$SWITCH_TABLE$cl$birdie$transantiagomaster$facebook$TSMCommandListener$LoginRequest:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockDialogFragment;-><init>()V

    .line 65
    sget-object v0, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener$LoginRequest;->SOCIAL_ANY:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener$LoginRequest;

    iput-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment;->type:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener$LoginRequest;

    .line 204
    new-instance v0, Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment$1;

    invoke-direct {v0, p0}, Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment$1;-><init>(Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment;)V

    iput-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment;->callback:Lcom/facebook/Session$StatusCallback;

    .line 30
    return-void
.end method

.method static synthetic access$0$1b994b90(Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment;Lcom/facebook/SessionState;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 185
    invoke-virtual {p1}, Lcom/facebook/SessionState;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "SocialLoginDialogFragment"

    const-string v1, "Logged in..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment;->dismiss()V

    iget-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment;->caller:Lcl/birdie/transantiagomaster/facebook/IFBCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment;->caller:Lcl/birdie/transantiagomaster/facebook/IFBCallback;

    invoke-interface {v0, v2}, Lcl/birdie/transantiagomaster/facebook/IFBCallback;->onSuccess(Ljava/lang/Object;)V

    iput-object v2, p0, Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment;->caller:Lcl/birdie/transantiagomaster/facebook/IFBCallback;

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/facebook/SessionState;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SocialLoginDialogFragment"

    const-string v1, "Logged out..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment;->dismiss()V

    iget-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment;->caller:Lcl/birdie/transantiagomaster/facebook/IFBCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment;->caller:Lcl/birdie/transantiagomaster/facebook/IFBCallback;

    invoke-interface {v0, v2}, Lcl/birdie/transantiagomaster/facebook/IFBCallback;->onSuccess(Ljava/lang/Object;)V

    iput-object v2, p0, Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment;->caller:Lcl/birdie/transantiagomaster/facebook/IFBCallback;

    goto :goto_0
.end method

.method static synthetic access$2(Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment;)Lcl/birdie/transantiagomaster/facebook/IFBCallback;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment;->caller:Lcl/birdie/transantiagomaster/facebook/IFBCallback;

    return-object v0
.end method

.method static synthetic access$3(Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment;)Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    return-object v0
.end method

.method static synthetic access$4(Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment;Landroid/view/ViewGroup;)V
    .locals 0

    .prologue
    .line 126
    invoke-direct {p0, p1}, Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment;->checkTwitterStatus(Landroid/view/ViewGroup;)V

    return-void
.end method

.method private checkTwitterStatus(Landroid/view/ViewGroup;)V
    .locals 2
    .param p1, "v"    # Landroid/view/ViewGroup;

    .prologue
    .line 127
    const v1, 0x7f0800be

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 129
    .local v0, "b":Landroid/widget/Button;
    if-nez v0, :cond_0

    .line 183
    :goto_0
    return-void

    .line 132
    :cond_0
    invoke-static {}, Lcl/birdie/transantiagomaster/twitter/TwitterHandler;->estaConectado()Z

    move-result v1

    if-nez v1, :cond_1

    .line 134
    const v1, 0x7f0600a8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 135
    new-instance v1, Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment$3;

    invoke-direct {v1, p0}, Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment$3;-><init>(Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 171
    :cond_1
    const v1, 0x7f0600aa

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 172
    new-instance v1, Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment$4;

    invoke-direct {v1, p0}, Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment$4;-><init>(Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public static dismissDialog(Lcom/actionbarsherlock/app/SherlockFragmentActivity;Ljava/lang/String;)V
    .locals 4
    .param p0, "activity"    # Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 287
    if-nez p0, :cond_1

    .line 288
    const-string v2, "SocialLoginDialogFragment"

    const-string v3, "dismissDialog: activity null!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    :cond_0
    :goto_0
    return-void

    .line 291
    :cond_1
    invoke-virtual {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 292
    .local v1, "prev":Landroid/support/v4/app/Fragment;
    if-eqz v1, :cond_0

    .line 294
    const-string v2, "SocialLoginDialogFragment"

    const-string v3, "prev found!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    invoke-virtual {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 296
    .local v0, "ft":Landroid/support/v4/app/FragmentTransaction;
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 297
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_0
.end method

.method public static showDialog(Lcom/actionbarsherlock/app/SherlockFragmentActivity;Lcl/birdie/transantiagomaster/facebook/TSMCommandListener$LoginRequest;Ljava/lang/String;Lcl/birdie/transantiagomaster/facebook/IFBCallback;)V
    .locals 6
    .param p0, "activity"    # Lcom/actionbarsherlock/app/SherlockFragmentActivity;
    .param p1, "type"    # Lcl/birdie/transantiagomaster/facebook/TSMCommandListener$LoginRequest;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "caller"    # Lcl/birdie/transantiagomaster/facebook/IFBCallback;

    .prologue
    .line 268
    if-nez p0, :cond_0

    .line 269
    const-string v2, "SocialLoginDialogFragment"

    const-string v3, "showDialog: activity null!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    :goto_0
    return-void

    .line 272
    :cond_0
    invoke-virtual {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 273
    .local v0, "ft":Landroid/support/v4/app/FragmentTransaction;
    invoke-virtual {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 274
    .local v1, "prev":Landroid/support/v4/app/Fragment;
    if-eqz v1, :cond_1

    .line 276
    const-string v2, "SocialLoginDialogFragment"

    const-string v3, "showDialog: prev found!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 281
    :cond_1
    new-instance v2, Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment;

    invoke-direct {v2}, Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment;-><init>()V

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "type"

    invoke-virtual {p1}, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener$LoginRequest;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "tag"

    invoke-virtual {v3, v4, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment;->setArguments(Landroid/os/Bundle;)V

    iput-object p3, v2, Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment;->caller:Lcl/birdie/transantiagomaster/facebook/IFBCallback;

    .line 282
    invoke-virtual {v2, v0, p2}, Lcom/actionbarsherlock/app/SherlockDialogFragment;->show(Landroid/support/v4/app/FragmentTransaction;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 234
    invoke-super {p0, p1, p2, p3}, Lcom/actionbarsherlock/app/SherlockDialogFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 236
    iget-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment;->uiHelper:Lcom/facebook/UiLifecycleHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/UiLifecycleHelper;->onActivityResult(IILandroid/content/Intent;)V

    .line 237
    return-void
.end method

.method public final onAttach(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 41
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockDialogFragment;->onAttach(Landroid/app/Activity;)V

    .line 43
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    move-object v1, v0

    iput-object v1, p0, Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    return-void

    .line 45
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

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 241
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 243
    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcl/birdie/transantiagomaster/MainActivity;

    .line 244
    .local v0, "act":Lcl/birdie/transantiagomaster/MainActivity;
    new-instance v1, Lcom/facebook/UiLifecycleHelper;

    iget-object v2, p0, Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment;->callback:Lcom/facebook/Session$StatusCallback;

    invoke-direct {v1, v0, v2}, Lcom/facebook/UiLifecycleHelper;-><init>(Landroid/app/Activity;Lcom/facebook/Session$StatusCallback;)V

    iput-object v1, p0, Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment;->uiHelper:Lcom/facebook/UiLifecycleHelper;

    .line 245
    iget-object v1, p0, Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment;->uiHelper:Lcom/facebook/UiLifecycleHelper;

    invoke-virtual {v1, p1}, Lcom/facebook/UiLifecycleHelper;->onCreate(Landroid/os/Bundle;)V

    .line 246
    return-void
.end method

.method public final onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    .line 71
    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "type"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 74
    .local v1, "tmp":Ljava/lang/String;
    :goto_0
    invoke-static {v1}, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener$LoginRequest;->valueOf(Ljava/lang/String;)Lcl/birdie/transantiagomaster/facebook/TSMCommandListener$LoginRequest;

    move-result-object v2

    iput-object v2, p0, Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment;->type:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener$LoginRequest;

    .line 76
    invoke-virtual {p0, v4}, Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment;->setCancelable(Z)V

    .line 77
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    .line 78
    .local v0, "pd":Landroid/app/Dialog;
    invoke-virtual {v0, v4}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 79
    return-object v0

    .line 71
    .end local v0    # "pd":Landroid/app/Dialog;
    .end local v1    # "tmp":Ljava/lang/String;
    :cond_0
    sget-object v2, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener$LoginRequest;->SOCIAL_ANY:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener$LoginRequest;

    invoke-virtual {v2}, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener$LoginRequest;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 85
    const v3, 0x7f030036

    const/4 v4, 0x0

    invoke-virtual {p1, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 88
    .local v2, "v":Landroid/view/View;
    const v3, 0x7f0800bc

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 90
    .local v1, "txt":Landroid/widget/TextView;
    const v0, 0x7f06011b

    .line 92
    .local v0, "msgId":I
    invoke-static {}, Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment;->$SWITCH_TABLE$cl$birdie$transantiagomaster$facebook$TSMCommandListener$LoginRequest()[I

    move-result-object v3

    iget-object v4, p0, Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment;->type:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener$LoginRequest;

    invoke-virtual {v4}, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener$LoginRequest;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 103
    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 104
    const v3, 0x7f0800bd

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/facebook/widget/LoginButton;

    .line 105
    invoke-virtual {v3, p0}, Lcom/facebook/widget/LoginButton;->setFragment(Landroid/support/v4/app/Fragment;)V

    .line 108
    const v3, 0x7f080081

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 109
    new-instance v4, Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment$2;

    invoke-direct {v4, p0}, Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment$2;-><init>(Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object v3, v2

    .line 121
    check-cast v3, Landroid/view/ViewGroup;

    invoke-direct {p0, v3}, Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment;->checkTwitterStatus(Landroid/view/ViewGroup;)V

    .line 123
    return-object v2

    .line 94
    :pswitch_0
    const v0, 0x7f06011b

    .line 95
    goto :goto_0

    .line 97
    :pswitch_1
    const v0, 0x7f06011c

    .line 98
    goto :goto_0

    .line 100
    :pswitch_2
    const v0, 0x7f06011d

    goto :goto_0

    .line 92
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public final onDestroy()V
    .locals 1

    .prologue
    .line 256
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockDialogFragment;->onDestroy()V

    .line 257
    iget-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment;->uiHelper:Lcom/facebook/UiLifecycleHelper;

    invoke-virtual {v0}, Lcom/facebook/UiLifecycleHelper;->onDestroy()V

    .line 258
    return-void
.end method

.method public final onPause()V
    .locals 1

    .prologue
    .line 250
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockDialogFragment;->onPause()V

    .line 251
    iget-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment;->uiHelper:Lcom/facebook/UiLifecycleHelper;

    invoke-virtual {v0}, Lcom/facebook/UiLifecycleHelper;->onPause()V

    .line 252
    return-void
.end method

.method public final onResume()V
    .locals 1

    .prologue
    .line 214
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockDialogFragment;->onResume()V

    .line 227
    iget-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment;->uiHelper:Lcom/facebook/UiLifecycleHelper;

    invoke-virtual {v0}, Lcom/facebook/UiLifecycleHelper;->onResume()V

    .line 229
    invoke-virtual {p0}, Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment;->checkTwitterStatus(Landroid/view/ViewGroup;)V

    .line 230
    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 262
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockDialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 263
    iget-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/SocialLoginDialogFragment;->uiHelper:Lcom/facebook/UiLifecycleHelper;

    invoke-virtual {v0, p1}, Lcom/facebook/UiLifecycleHelper;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 264
    return-void
.end method
