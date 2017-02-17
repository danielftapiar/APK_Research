.class public Lcom/prey/activities/PermissionInformationActivity;
.super Lcom/prey/activities/PreyActivity;
.source "PermissionInformationActivity.java"


# static fields
.field private static final SECURITY_PRIVILEGES:I = 0xa


# instance fields
.field private congratsMessage:Ljava/lang/String;

.field private first:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/prey/activities/PreyActivity;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/prey/activities/PermissionInformationActivity;->first:Z

    return-void
.end method

.method static synthetic access$002(Lcom/prey/activities/PermissionInformationActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/prey/activities/PermissionInformationActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/prey/activities/PermissionInformationActivity;->first:Z

    return p1
.end method

.method private showScreen()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 71
    invoke-static {p0}, Lcom/prey/backwardcompatibility/FroyoSupport;->getInstance(Landroid/content/Context;)Lcom/prey/backwardcompatibility/FroyoSupport;

    move-result-object v8

    invoke-virtual {v8}, Lcom/prey/backwardcompatibility/FroyoSupport;->isAdminActive()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 72
    new-instance v1, Landroid/content/Intent;

    const-class v8, Lcom/prey/activities/WelcomeActivity;

    invoke-direct {v1, p0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 73
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/prey/activities/PermissionInformationActivity;->startActivity(Landroid/content/Intent;)V

    .line 74
    invoke-static {p0}, Lcom/prey/PreyConfig;->getPreyConfig(Landroid/content/Context;)Lcom/prey/PreyConfig;

    move-result-object v8

    invoke-virtual {v8, v9}, Lcom/prey/PreyConfig;->setProtectReady(Z)V

    .line 76
    invoke-virtual {p0}, Lcom/prey/activities/PermissionInformationActivity;->finish()V

    .line 111
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 78
    :cond_0
    const v8, 0x7f040043

    invoke-virtual {p0, v8}, Lcom/prey/activities/PermissionInformationActivity;->setContentView(I)V

    .line 79
    invoke-virtual {p0, v9}, Lcom/prey/activities/PermissionInformationActivity;->setRequestedOrientation(I)V

    .line 80
    const v8, 0x7f1000c7

    invoke-virtual {p0, v8}, Lcom/prey/activities/PermissionInformationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 81
    .local v0, "buttonActivate":Landroid/widget/Button;
    new-instance v8, Lcom/prey/activities/PermissionInformationActivity$1;

    invoke-direct {v8, p0}, Lcom/prey/activities/PermissionInformationActivity$1;-><init>(Lcom/prey/activities/PermissionInformationActivity;)V

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    invoke-virtual {p0}, Lcom/prey/activities/PermissionInformationActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v8

    const-string v9, "fonts/Titillium_Web/TitilliumWeb-Regular.ttf"

    invoke-static {v8, v9}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v7

    .line 92
    .local v7, "titilliumWebRegular":Landroid/graphics/Typeface;
    invoke-virtual {p0}, Lcom/prey/activities/PermissionInformationActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v8

    const-string v9, "fonts/Titillium_Web/TitilliumWeb-Bold.ttf"

    invoke-static {v8, v9}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v6

    .line 93
    .local v6, "titilliumWebBold":Landroid/graphics/Typeface;
    invoke-virtual {p0}, Lcom/prey/activities/PermissionInformationActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v8

    const-string v9, "fonts/MagdaClean/magdacleanmono-regular.ttf"

    invoke-static {v8, v9}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    .line 96
    .local v2, "magdacleanmonoRegular":Landroid/graphics/Typeface;
    const v8, 0x7f10009d

    invoke-virtual {p0, v8}, Lcom/prey/activities/PermissionInformationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 97
    .local v3, "textView1":Landroid/widget/TextView;
    const v8, 0x7f1000ad

    invoke-virtual {p0, v8}, Lcom/prey/activities/PermissionInformationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 98
    .local v4, "textView2":Landroid/widget/TextView;
    const v8, 0x7f1000c4

    invoke-virtual {p0, v8}, Lcom/prey/activities/PermissionInformationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 101
    .local v5, "textView3":Landroid/widget/TextView;
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 102
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 103
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 106
    invoke-virtual {v0, v6}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " resultCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 63
    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    .line 64
    invoke-direct {p0}, Lcom/prey/activities/PermissionInformationActivity;->showScreen()V

    .line 65
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 44
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x1

    .line 34
    invoke-super {p0, p1}, Lcom/prey/activities/PreyActivity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    invoke-virtual {p0, v1}, Lcom/prey/activities/PermissionInformationActivity;->requestWindowFeature(I)Z

    .line 36
    invoke-virtual {p0, v1}, Lcom/prey/activities/PermissionInformationActivity;->setRequestedOrientation(I)V

    .line 37
    invoke-virtual {p0}, Lcom/prey/activities/PermissionInformationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 38
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "message"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/prey/activities/PermissionInformationActivity;->congratsMessage:Ljava/lang/String;

    .line 39
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 48
    invoke-super {p0}, Lcom/prey/activities/PreyActivity;->onResume()V

    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "first:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/prey/activities/PermissionInformationActivity;->first:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p0}, Lcom/prey/activities/PermissionInformationActivity;->getPreyConfig()Lcom/prey/PreyConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/prey/PreyConfig;->isFroyoOrAbove()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/prey/backwardcompatibility/FroyoSupport;->getInstance(Landroid/content/Context;)Lcom/prey/backwardcompatibility/FroyoSupport;

    move-result-object v1

    invoke-virtual {v1}, Lcom/prey/backwardcompatibility/FroyoSupport;->isAdminActive()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/prey/activities/PermissionInformationActivity;->first:Z

    if-nez v1, :cond_0

    .line 51
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/prey/activities/PermissionInformationActivity;->first:Z

    .line 52
    invoke-virtual {p0}, Lcom/prey/activities/PermissionInformationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/prey/backwardcompatibility/FroyoSupport;->getInstance(Landroid/content/Context;)Lcom/prey/backwardcompatibility/FroyoSupport;

    move-result-object v1

    invoke-virtual {v1}, Lcom/prey/backwardcompatibility/FroyoSupport;->getAskForAdminPrivilegesIntent()Landroid/content/Intent;

    move-result-object v0

    .line 53
    .local v0, "intent":Landroid/content/Intent;
    const/16 v1, 0xa

    invoke-virtual {p0, v0, v1}, Lcom/prey/activities/PermissionInformationActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 58
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 55
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/prey/activities/PermissionInformationActivity;->first:Z

    .line 56
    invoke-direct {p0}, Lcom/prey/activities/PermissionInformationActivity;->showScreen()V

    goto :goto_0
.end method
