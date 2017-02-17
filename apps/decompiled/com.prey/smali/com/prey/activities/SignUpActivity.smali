.class public Lcom/prey/activities/SignUpActivity;
.super Landroid/app/Activity;
.source "SignUpActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prey/activities/SignUpActivity$CreateAccount;
    }
.end annotation


# static fields
.field private static final ERROR:I = 0x1


# instance fields
.field private email:Ljava/lang/String;

.field private error:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 41
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 44
    iput-object v0, p0, Lcom/prey/activities/SignUpActivity;->error:Ljava/lang/String;

    .line 45
    iput-object v0, p0, Lcom/prey/activities/SignUpActivity;->email:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/prey/activities/SignUpActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/prey/activities/SignUpActivity;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/prey/activities/SignUpActivity;->email:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/prey/activities/SignUpActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/prey/activities/SignUpActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/prey/activities/SignUpActivity;->email:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/prey/activities/SignUpActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/prey/activities/SignUpActivity;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/prey/activities/SignUpActivity;->error:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/prey/activities/SignUpActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/prey/activities/SignUpActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/prey/activities/SignUpActivity;->error:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public onBackPressed()V
    .locals 3

    .prologue
    .line 174
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/prey/activities/SignUpActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/prey/activities/InitActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 175
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/prey/activities/SignUpActivity;->startActivity(Landroid/content/Intent;)V

    .line 176
    invoke-virtual {p0}, Lcom/prey/activities/SignUpActivity;->finish()V

    .line 177
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 61
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 62
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v12, 0x1

    .line 66
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 67
    invoke-virtual {p0, v12}, Lcom/prey/activities/SignUpActivity;->requestWindowFeature(I)Z

    .line 68
    invoke-virtual {p0, v12}, Lcom/prey/activities/SignUpActivity;->setRequestedOrientation(I)V

    .line 69
    const v12, 0x7f04004e

    invoke-virtual {p0, v12}, Lcom/prey/activities/SignUpActivity;->setContentView(I)V

    .line 70
    const-string v12, "onCreate of SignUpActivity"

    invoke-static {v12}, Lcom/prey/PreyLogger;->i(Ljava/lang/String;)V

    .line 72
    const v12, 0x7f1000ff

    invoke-virtual {p0, v12}, Lcom/prey/activities/SignUpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    .line 73
    .local v7, "nameText":Landroid/widget/EditText;
    const v12, 0x7f1000fa

    invoke-virtual {p0, v12}, Lcom/prey/activities/SignUpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 74
    .local v1, "emailText":Landroid/widget/EditText;
    const v12, 0x7f1000fb

    invoke-virtual {p0, v12}, Lcom/prey/activities/SignUpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    .line 75
    .local v8, "passwordText":Landroid/widget/EditText;
    const v12, 0x7f100100

    invoke-virtual {p0, v12}, Lcom/prey/activities/SignUpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 77
    .local v0, "buttonSignup":Landroid/widget/Button;
    const v12, 0x7f100101

    invoke-virtual {p0, v12}, Lcom/prey/activities/SignUpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 81
    .local v4, "linkSignup":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/prey/activities/SignUpActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v12

    const-string v13, "fonts/MagdaClean/magdacleanmono-regular.ttf"

    invoke-static {v12, v13}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v5

    .line 82
    .local v5, "magdacleanmonoRegular":Landroid/graphics/Typeface;
    invoke-virtual {p0}, Lcom/prey/activities/SignUpActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v12

    const-string v13, "fonts/Titillium_Web/TitilliumWeb-Bold.ttf"

    invoke-static {v12, v13}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v11

    .line 84
    .local v11, "titilliumWebBold":Landroid/graphics/Typeface;
    const v12, 0x7f1000f8

    invoke-virtual {p0, v12}, Lcom/prey/activities/SignUpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 85
    .local v9, "textViewInit1":Landroid/widget/TextView;
    const v12, 0x7f1000f9

    invoke-virtual {p0, v12}, Lcom/prey/activities/SignUpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 86
    .local v10, "textViewInit2":Landroid/widget/TextView;
    invoke-virtual {v9, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 87
    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 91
    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 92
    invoke-virtual {v0, v11}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 94
    invoke-virtual {v7, v5}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 95
    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 96
    invoke-virtual {v8, v5}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 98
    new-instance v6, Landroid/util/DisplayMetrics;

    invoke-direct {v6}, Landroid/util/DisplayMetrics;-><init>()V

    .line 99
    .local v6, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/prey/activities/SignUpActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v12

    invoke-interface {v12}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v12

    invoke-virtual {v12, v6}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 103
    iget v12, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 v2, v12, 0x3

    .line 104
    .local v2, "halfHeight":I
    new-instance v3, Lcom/prey/util/KeyboardStatusDetector;

    invoke-direct {v3}, Lcom/prey/util/KeyboardStatusDetector;-><init>()V

    .line 106
    .local v3, "keyboard":Lcom/prey/util/KeyboardStatusDetector;
    invoke-virtual {v3, p0}, Lcom/prey/util/KeyboardStatusDetector;->registerActivity(Landroid/app/Activity;)V

    .line 107
    new-instance v12, Lcom/prey/activities/SignUpActivity$1;

    invoke-direct {v12, p0, v4, v2}, Lcom/prey/activities/SignUpActivity$1;-><init>(Lcom/prey/activities/SignUpActivity;Landroid/widget/TextView;I)V

    invoke-virtual {v3, v12}, Lcom/prey/util/KeyboardStatusDetector;->setVisibilityListener(Lcom/prey/util/KeyboardVisibilityListener;)Lcom/prey/util/KeyboardStatusDetector;

    .line 132
    new-instance v12, Lcom/prey/activities/SignUpActivity$2;

    invoke-direct {v12, p0, v7, v1, v8}, Lcom/prey/activities/SignUpActivity$2;-><init>(Lcom/prey/activities/SignUpActivity;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;)V

    invoke-virtual {v0, v12}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    new-instance v12, Lcom/prey/activities/SignUpActivity$3;

    invoke-direct {v12, p0}, Lcom/prey/activities/SignUpActivity$3;-><init>(Lcom/prey/activities/SignUpActivity;)V

    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .param p1, "id"    # I

    .prologue
    .line 229
    const/4 v0, 0x0

    .line 230
    .local v0, "pass":Landroid/app/Dialog;
    packed-switch p1, :pswitch_data_0

    .line 239
    .end local v0    # "pass":Landroid/app/Dialog;
    :goto_0
    return-object v0

    .line 233
    .restart local v0    # "pass":Landroid/app/Dialog;
    :pswitch_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f020089

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f09005a

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/prey/activities/SignUpActivity;->error:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f09008a

    new-instance v3, Lcom/prey/activities/SignUpActivity$4;

    invoke-direct {v3, p0}, Lcom/prey/activities/SignUpActivity$4;-><init>(Lcom/prey/activities/SignUpActivity;)V

    .line 234
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    .line 237
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 230
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 55
    const-string v0, "onPause of SignUpActivity"

    invoke-static {v0}, Lcom/prey/PreyLogger;->i(Ljava/lang/String;)V

    .line 56
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 57
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 48
    const-string v0, "onResume of SignUpActivity"

    invoke-static {v0}, Lcom/prey/PreyLogger;->i(Ljava/lang/String;)V

    .line 49
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 51
    return-void
.end method
