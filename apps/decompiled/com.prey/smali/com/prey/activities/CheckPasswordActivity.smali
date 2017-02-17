.class public Lcom/prey/activities/CheckPasswordActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "CheckPasswordActivity.java"

# interfaces
.implements Landroid/support/v4/app/ActivityCompat$OnRequestPermissionsResultCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prey/activities/CheckPasswordActivity$VersionTask;,
        Lcom/prey/activities/CheckPasswordActivity$CheckPassword;
    }
.end annotation


# static fields
.field private static final INITIAL_PERMS:[Ljava/lang/String;

.field private static final REQUEST_PERMISSIONS:I = 0x5


# instance fields
.field activity:Lcom/prey/activities/CheckPasswordActivity;

.field wrongPasswordIntents:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 461
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.CAMERA"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "android.permission.READ_PHONE_STATE"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v2, v0, v1

    sput-object v0, Lcom/prey/activities/CheckPasswordActivity;->INITIAL_PERMS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 63
    const/4 v0, 0x0

    iput v0, p0, Lcom/prey/activities/CheckPasswordActivity;->wrongPasswordIntents:I

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/prey/activities/CheckPasswordActivity;->activity:Lcom/prey/activities/CheckPasswordActivity;

    return-void
.end method

.method static synthetic access$000(Lcom/prey/activities/CheckPasswordActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/prey/activities/CheckPasswordActivity;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/prey/activities/CheckPasswordActivity;->askForPermission()V

    return-void
.end method

.method private askForPermission()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    .line 413
    sget-object v0, Lcom/prey/activities/CheckPasswordActivity;->INITIAL_PERMS:[Ljava/lang/String;

    const/4 v1, 0x5

    invoke-static {p0, v0, v1}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 414
    return-void
.end method


# virtual methods
.method protected bindPasswordControls()V
    .locals 5

    .prologue
    const v4, 0x7f1000e4

    .line 310
    const v3, 0x7f1000e6

    invoke-virtual {p0, v3}, Lcom/prey/activities/CheckPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 311
    .local v0, "checkPasswordOkButton":Landroid/widget/Button;
    invoke-virtual {p0, v4}, Lcom/prey/activities/CheckPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 312
    .local v1, "pass1":Landroid/widget/EditText;
    new-instance v3, Lcom/prey/activities/CheckPasswordActivity$9;

    invoke-direct {v3, p0, v1}, Lcom/prey/activities/CheckPasswordActivity$9;-><init>(Lcom/prey/activities/CheckPasswordActivity;Landroid/widget/EditText;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 334
    invoke-virtual {p0, v4}, Lcom/prey/activities/CheckPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 335
    .local v2, "password":Landroid/widget/EditText;
    sget-object v3, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 336
    new-instance v3, Landroid/text/method/PasswordTransformationMethod;

    invoke-direct {v3}, Landroid/text/method/PasswordTransformationMethod;-><init>()V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 337
    return-void
.end method

.method public getVersionName()Ljava/lang/String;
    .locals 5

    .prologue
    .line 470
    const/4 v2, 0x0

    .line 472
    .local v2, "versionName":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/prey/activities/CheckPasswordActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 473
    .local v1, "manager":Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Lcom/prey/activities/CheckPasswordActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 474
    .local v0, "info":Landroid/content/pm/PackageInfo;
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 477
    .end local v0    # "info":Landroid/content/pm/PackageInfo;
    .end local v1    # "manager":Landroid/content/pm/PackageManager;
    :goto_0
    return-object v2

    .line 475
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 69
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 70
    invoke-virtual {p0}, Lcom/prey/activities/CheckPasswordActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/app/ActionBar;->hide()V

    .line 71
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/prey/activities/CheckPasswordActivity;->setRequestedOrientation(I)V

    .line 72
    const v1, 0x7f040042

    invoke-virtual {p0, v1}, Lcom/prey/activities/CheckPasswordActivity;->setContentView(I)V

    .line 74
    new-instance v0, Lcom/prey/activities/CheckPasswordActivity$VersionTask;

    invoke-direct {v0, p0}, Lcom/prey/activities/CheckPasswordActivity$VersionTask;-><init>(Lcom/prey/activities/CheckPasswordActivity;)V

    .line 75
    .local v0, "versionTask":Lcom/prey/activities/CheckPasswordActivity$VersionTask;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/prey/activities/CheckPasswordActivity$VersionTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 76
    iput-object p0, p0, Lcom/prey/activities/CheckPasswordActivity;->activity:Lcom/prey/activities/CheckPasswordActivity;

    .line 77
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "grantResults"    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x1

    .line 425
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/app/AppCompatActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 426
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_______onRequestPermissionsResult_______requestCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " permissions:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " grantResults:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 428
    packed-switch p1, :pswitch_data_0

    .line 457
    :goto_0
    return-void

    .line 430
    :pswitch_0
    const/4 v0, 0x0

    aget v0, p3, v0

    if-nez v0, :cond_0

    .line 431
    const-string v0, "setCanAccessCamara"

    invoke-static {v0}, Lcom/prey/PreyLogger;->i(Ljava/lang/String;)V

    .line 432
    invoke-virtual {p0}, Lcom/prey/activities/CheckPasswordActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/prey/PreyConfig;->getPreyConfig(Landroid/content/Context;)Lcom/prey/PreyConfig;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/prey/PreyConfig;->setCanAccessCamara(Z)V

    .line 434
    :cond_0
    aget v0, p3, v2

    if-nez v0, :cond_1

    .line 435
    const-string v0, "setCanAccessFineLocation"

    invoke-static {v0}, Lcom/prey/PreyLogger;->i(Ljava/lang/String;)V

    .line 436
    invoke-virtual {p0}, Lcom/prey/activities/CheckPasswordActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/prey/PreyConfig;->getPreyConfig(Landroid/content/Context;)Lcom/prey/PreyConfig;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/prey/PreyConfig;->setCanAccessFineLocation(Z)V

    .line 438
    :cond_1
    const/4 v0, 0x2

    aget v0, p3, v0

    if-nez v0, :cond_2

    .line 439
    const-string v0, "setCanAccessCoarseLocation"

    invoke-static {v0}, Lcom/prey/PreyLogger;->i(Ljava/lang/String;)V

    .line 440
    invoke-virtual {p0}, Lcom/prey/activities/CheckPasswordActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/prey/PreyConfig;->getPreyConfig(Landroid/content/Context;)Lcom/prey/PreyConfig;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/prey/PreyConfig;->setCanAccessCoarseLocation(Z)V

    .line 442
    :cond_2
    const/4 v0, 0x3

    aget v0, p3, v0

    if-nez v0, :cond_3

    .line 443
    const-string v0, "setCanAccessReadPhoneState"

    invoke-static {v0}, Lcom/prey/PreyLogger;->i(Ljava/lang/String;)V

    .line 444
    invoke-virtual {p0}, Lcom/prey/activities/CheckPasswordActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/prey/PreyConfig;->getPreyConfig(Landroid/content/Context;)Lcom/prey/PreyConfig;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/prey/PreyConfig;->setCanAccessReadPhoneState(Z)V

    .line 446
    :cond_3
    const/4 v0, 0x4

    aget v0, p3, v0

    if-nez v0, :cond_4

    .line 447
    const-string v0, "setCanAccessExternalStorage"

    invoke-static {v0}, Lcom/prey/PreyLogger;->i(Ljava/lang/String;)V

    .line 448
    invoke-virtual {p0}, Lcom/prey/activities/CheckPasswordActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/prey/PreyConfig;->getPreyConfig(Landroid/content/Context;)Lcom/prey/PreyConfig;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/prey/PreyConfig;->setCanAccessExternalStorage(Z)V

    .line 450
    :cond_4
    invoke-virtual {p0}, Lcom/prey/activities/CheckPasswordActivity;->onResume()V

    goto :goto_0

    .line 428
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 44

    .prologue
    .line 81
    invoke-super/range {p0 .. p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 82
    invoke-virtual/range {p0 .. p0}, Lcom/prey/activities/CheckPasswordActivity;->bindPasswordControls()V

    .line 83
    const v40, 0x7f1000e5

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/prey/activities/CheckPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 84
    .local v14, "device_ready_h2_text":Landroid/widget/TextView;
    const v40, 0x7f1000e7

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/prey/activities/CheckPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Landroid/widget/TextView;

    .line 86
    .local v28, "textForgotPassword":Landroid/widget/TextView;
    const v40, 0x7f1000e6

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/prey/activities/CheckPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/Button;

    .line 87
    .local v25, "password_btn_login":Landroid/widget/Button;
    const v40, 0x7f1000e4

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/prey/activities/CheckPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/EditText;

    .line 89
    .local v26, "password_pass_txt":Landroid/widget/EditText;
    const v40, 0x7f10009d

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/prey/activities/CheckPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v29

    check-cast v29, Landroid/widget/TextView;

    .line 90
    .local v29, "textView1":Landroid/widget/TextView;
    const v40, 0x7f1000ad

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/prey/activities/CheckPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v30

    check-cast v30, Landroid/widget/TextView;

    .line 93
    .local v30, "textView2":Landroid/widget/TextView;
    invoke-virtual/range {p0 .. p0}, Lcom/prey/activities/CheckPasswordActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v40

    const-string v41, "fonts/Titillium_Web/TitilliumWeb-Regular.ttf"

    invoke-static/range {v40 .. v41}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v37

    .line 94
    .local v37, "titilliumWebRegular":Landroid/graphics/Typeface;
    invoke-virtual/range {p0 .. p0}, Lcom/prey/activities/CheckPasswordActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v40

    const-string v41, "fonts/Titillium_Web/TitilliumWeb-Bold.ttf"

    invoke-static/range {v40 .. v41}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v36

    .line 95
    .local v36, "titilliumWebBold":Landroid/graphics/Typeface;
    invoke-virtual/range {p0 .. p0}, Lcom/prey/activities/CheckPasswordActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v40

    const-string v41, "fonts/MagdaClean/magdacleanmono-regular.ttf"

    invoke-static/range {v40 .. v41}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v23

    .line 98
    .local v23, "magdacleanmonoRegular":Landroid/graphics/Typeface;
    move-object/from16 v0, v29

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 99
    move-object/from16 v0, v30

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 102
    move-object/from16 v0, v37

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 103
    move-object/from16 v0, v28

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 104
    move-object/from16 v0, v25

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 105
    move-object/from16 v0, v26

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 109
    :try_start_0
    new-instance v40, Lcom/prey/activities/CheckPasswordActivity$1;

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/prey/activities/CheckPasswordActivity$1;-><init>(Lcom/prey/activities/CheckPasswordActivity;)V

    move-object/from16 v0, v28

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 125
    :goto_0
    const v40, 0x7f1000b8

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/prey/activities/CheckPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v31

    check-cast v31, Landroid/widget/TextView;

    .line 126
    .local v31, "textView5_1":Landroid/widget/TextView;
    const v40, 0x7f1000b9

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/prey/activities/CheckPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v32

    check-cast v32, Landroid/widget/TextView;

    .line 128
    .local v32, "textView5_2":Landroid/widget/TextView;
    move-object/from16 v0, v31

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 129
    move-object/from16 v0, v32

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 132
    const v40, 0x7f1000e8

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/prey/activities/CheckPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v33

    check-cast v33, Landroid/widget/TextView;

    .line 133
    .local v33, "textViewUninstall":Landroid/widget/TextView;
    const v40, 0x7f1000e9

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/prey/activities/CheckPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/LinearLayout;

    .line 134
    .local v22, "linearLayoutTour":Landroid/widget/LinearLayout;
    move-object/from16 v0, v33

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 137
    invoke-virtual/range {p0 .. p0}, Lcom/prey/activities/CheckPasswordActivity;->getApplication()Landroid/app/Application;

    move-result-object v40

    invoke-static/range {v40 .. v40}, Lcom/prey/PreyConfig;->getPreyConfig(Landroid/content/Context;)Lcom/prey/PreyConfig;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Lcom/prey/PreyConfig;->getProtectTour()Z

    move-result v40

    if-eqz v40, :cond_3

    .line 138
    const/16 v40, 0x8

    move-object/from16 v0, v22

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 139
    const/16 v40, 0x0

    move-object/from16 v0, v33

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 141
    new-instance v40, Lcom/prey/activities/CheckPasswordActivity$2;

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/prey/activities/CheckPasswordActivity$2;-><init>(Lcom/prey/activities/CheckPasswordActivity;)V

    move-object/from16 v0, v33

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    :goto_1
    const/16 v27, 0x0

    .line 194
    .local v27, "showLocation":Z
    sget v40, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v41, 0x17

    move/from16 v0, v40

    move/from16 v1, v41

    if-lt v0, v1, :cond_5

    .line 195
    invoke-static/range {p0 .. p0}, Lcom/prey/PreyPermission;->canAccessFineLocation(Landroid/content/Context;)Z

    move-result v11

    .line 196
    .local v11, "canAccessFineLocation":Z
    invoke-static/range {p0 .. p0}, Lcom/prey/PreyPermission;->canAccessCoarseLocation(Landroid/content/Context;)Z

    move-result v10

    .line 197
    .local v10, "canAccessCoarseLocation":Z
    invoke-static/range {p0 .. p0}, Lcom/prey/PreyPermission;->canAccessCamera(Landroid/content/Context;)Z

    move-result v9

    .line 198
    .local v9, "canAccessCamera":Z
    invoke-static/range {p0 .. p0}, Lcom/prey/PreyPermission;->canAccessReadPhoneState(Landroid/content/Context;)Z

    move-result v13

    .line 199
    .local v13, "canAccessReadPhoneState":Z
    invoke-static/range {p0 .. p0}, Lcom/prey/PreyPermission;->canAccessReadExternalStorage(Landroid/content/Context;)Z

    move-result v12

    .line 202
    .local v12, "canAccessReadExternalStorage":Z
    if-eqz v11, :cond_0

    if-eqz v10, :cond_0

    if-eqz v9, :cond_0

    if-eqz v13, :cond_0

    if-nez v12, :cond_4

    .line 206
    :cond_0
    new-instance v6, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 208
    .local v6, "builder":Landroid/app/AlertDialog$Builder;
    new-instance v16, Landroid/widget/FrameLayout;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 209
    .local v16, "frameView":Landroid/widget/FrameLayout;
    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 211
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    .line 212
    .local v5, "alertDialog":Landroid/app/AlertDialog;
    invoke-virtual {v5}, Landroid/app/AlertDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v17

    .line 213
    .local v17, "inflater":Landroid/view/LayoutInflater;
    const v40, 0x7f040058

    move-object/from16 v0, v17

    move/from16 v1, v40

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v15

    .line 215
    .local v15, "dialoglayout":Landroid/view/View;
    const v40, 0x7f100107

    move/from16 v0, v40

    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v39

    check-cast v39, Landroid/widget/TextView;

    .line 216
    .local v39, "warning_title":Landroid/widget/TextView;
    const v40, 0x7f100108

    move/from16 v0, v40

    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v38

    check-cast v38, Landroid/widget/TextView;

    .line 218
    .local v38, "warning_body":Landroid/widget/TextView;
    move-object/from16 v0, v39

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 219
    move-object/from16 v0, v38

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 222
    const v40, 0x7f100109

    move/from16 v0, v40

    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    .line 223
    .local v8, "button_ok":Landroid/widget/Button;
    const v40, 0x7f10010a

    move/from16 v0, v40

    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    .line 224
    .local v7, "button_close":Landroid/widget/Button;
    move-object/from16 v0, v36

    invoke-virtual {v8, v0}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 225
    move-object/from16 v0, v36

    invoke-virtual {v7, v0}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 227
    move-object/from16 v35, p0

    .line 228
    .local v35, "thisActivity":Landroid/app/Activity;
    new-instance v40, Lcom/prey/activities/CheckPasswordActivity$5;

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5}, Lcom/prey/activities/CheckPasswordActivity$5;-><init>(Lcom/prey/activities/CheckPasswordActivity;Landroid/app/AlertDialog;)V

    move-object/from16 v0, v40

    invoke-virtual {v8, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 238
    new-instance v40, Lcom/prey/activities/CheckPasswordActivity$6;

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5}, Lcom/prey/activities/CheckPasswordActivity$6;-><init>(Lcom/prey/activities/CheckPasswordActivity;Landroid/app/AlertDialog;)V

    move-object/from16 v0, v40

    invoke-virtual {v7, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 249
    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    .line 250
    const/16 v27, 0x0

    .line 260
    .end local v5    # "alertDialog":Landroid/app/AlertDialog;
    .end local v6    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v7    # "button_close":Landroid/widget/Button;
    .end local v8    # "button_ok":Landroid/widget/Button;
    .end local v9    # "canAccessCamera":Z
    .end local v10    # "canAccessCoarseLocation":Z
    .end local v11    # "canAccessFineLocation":Z
    .end local v12    # "canAccessReadExternalStorage":Z
    .end local v13    # "canAccessReadPhoneState":Z
    .end local v15    # "dialoglayout":Landroid/view/View;
    .end local v16    # "frameView":Landroid/widget/FrameLayout;
    .end local v17    # "inflater":Landroid/view/LayoutInflater;
    .end local v35    # "thisActivity":Landroid/app/Activity;
    .end local v38    # "warning_body":Landroid/widget/TextView;
    .end local v39    # "warning_title":Landroid/widget/TextView;
    :goto_2
    if-eqz v27, :cond_2

    .line 261
    const-string v40, "location"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/prey/activities/CheckPasswordActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/location/LocationManager;

    .line 262
    .local v24, "mlocManager":Landroid/location/LocationManager;
    const-string v40, "gps"

    move-object/from16 v0, v24

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v18

    .line 263
    .local v18, "isGpsEnabled":Z
    const-string v40, "network"

    move-object/from16 v0, v24

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v19

    .line 264
    .local v19, "isNetworkEnabled":Z
    if-nez v18, :cond_1

    if-eqz v19, :cond_6

    .line 265
    :cond_1
    const-string v40, "isGpsEnabled || isNetworkEnabled"

    invoke-static/range {v40 .. v40}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 305
    .end local v18    # "isGpsEnabled":Z
    .end local v19    # "isNetworkEnabled":Z
    .end local v24    # "mlocManager":Landroid/location/LocationManager;
    :cond_2
    :goto_3
    invoke-static/range {p0 .. p0}, Lcom/prey/PreyConfig;->getPreyConfig(Landroid/content/Context;)Lcom/prey/PreyConfig;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Lcom/prey/PreyConfig;->registerC2dm()V

    .line 306
    return-void

    .line 154
    .end local v27    # "showLocation":Z
    :cond_3
    const/16 v40, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 155
    const/16 v40, 0x8

    move-object/from16 v0, v33

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 161
    const v40, 0x7f1000b7

    :try_start_1
    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/prey/activities/CheckPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/LinearLayout;

    .line 165
    .local v20, "linearLayout3_1":Landroid/widget/LinearLayout;
    new-instance v40, Lcom/prey/activities/CheckPasswordActivity$3;

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/prey/activities/CheckPasswordActivity$3;-><init>(Lcom/prey/activities/CheckPasswordActivity;)V

    move-object/from16 v0, v20

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 177
    const v40, 0x7f1000ba

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/prey/activities/CheckPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/LinearLayout;

    .line 178
    .local v21, "linearLayout3_2":Landroid/widget/LinearLayout;
    new-instance v40, Lcom/prey/activities/CheckPasswordActivity$4;

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/prey/activities/CheckPasswordActivity$4;-><init>(Lcom/prey/activities/CheckPasswordActivity;)V

    move-object/from16 v0, v21

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 187
    .end local v20    # "linearLayout3_1":Landroid/widget/LinearLayout;
    .end local v21    # "linearLayout3_2":Landroid/widget/LinearLayout;
    :catch_0
    move-exception v40

    goto/16 :goto_1

    .line 253
    .restart local v9    # "canAccessCamera":Z
    .restart local v10    # "canAccessCoarseLocation":Z
    .restart local v11    # "canAccessFineLocation":Z
    .restart local v12    # "canAccessReadExternalStorage":Z
    .restart local v13    # "canAccessReadPhoneState":Z
    .restart local v27    # "showLocation":Z
    :cond_4
    const/16 v27, 0x1

    goto/16 :goto_2

    .line 258
    .end local v9    # "canAccessCamera":Z
    .end local v10    # "canAccessCoarseLocation":Z
    .end local v11    # "canAccessFineLocation":Z
    .end local v12    # "canAccessReadExternalStorage":Z
    .end local v13    # "canAccessReadPhoneState":Z
    :cond_5
    const/16 v27, 0x1

    goto/16 :goto_2

    .line 268
    .restart local v18    # "isGpsEnabled":Z
    .restart local v19    # "isNetworkEnabled":Z
    .restart local v24    # "mlocManager":Landroid/location/LocationManager;
    :cond_6
    const-string v40, "no gps ni red"

    invoke-static/range {v40 .. v40}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 269
    new-instance v6, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 271
    .restart local v6    # "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    .line 272
    .restart local v5    # "alertDialog":Landroid/app/AlertDialog;
    new-instance v34, Landroid/widget/TextView;

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 273
    .local v34, "textview":Landroid/widget/TextView;
    const v40, 0x7f09007e

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/prey/activities/CheckPasswordActivity;->getString(I)Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v34

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 274
    const/16 v40, 0xa

    move-object/from16 v0, v34

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 275
    const/high16 v40, 0x41900000    # 18.0f

    move-object/from16 v0, v34

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 276
    const/16 v40, 0x14

    const/16 v41, 0x0

    const/16 v42, 0x14

    const/16 v43, 0x14

    move-object/from16 v0, v34

    move/from16 v1, v40

    move/from16 v2, v41

    move/from16 v3, v42

    move/from16 v4, v43

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 277
    const/high16 v40, -0x1000000

    move-object/from16 v0, v34

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 278
    move-object/from16 v0, v34

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 279
    const v40, 0x7f090070

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/prey/activities/CheckPasswordActivity;->getString(I)Ljava/lang/String;

    move-result-object v40

    new-instance v41, Lcom/prey/activities/CheckPasswordActivity$7;

    move-object/from16 v0, v41

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/prey/activities/CheckPasswordActivity$7;-><init>(Lcom/prey/activities/CheckPasswordActivity;)V

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-virtual {v6, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 292
    const v40, 0x7f090049

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/prey/activities/CheckPasswordActivity;->getString(I)Ljava/lang/String;

    move-result-object v40

    new-instance v41, Lcom/prey/activities/CheckPasswordActivity$8;

    move-object/from16 v0, v41

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/prey/activities/CheckPasswordActivity$8;-><init>(Lcom/prey/activities/CheckPasswordActivity;)V

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-virtual {v6, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 301
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_3

    .line 120
    .end local v5    # "alertDialog":Landroid/app/AlertDialog;
    .end local v6    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v18    # "isGpsEnabled":Z
    .end local v19    # "isNetworkEnabled":Z
    .end local v22    # "linearLayoutTour":Landroid/widget/LinearLayout;
    .end local v24    # "mlocManager":Landroid/location/LocationManager;
    .end local v27    # "showLocation":Z
    .end local v31    # "textView5_1":Landroid/widget/TextView;
    .end local v32    # "textView5_2":Landroid/widget/TextView;
    .end local v33    # "textViewUninstall":Landroid/widget/TextView;
    .end local v34    # "textview":Landroid/widget/TextView;
    :catch_1
    move-exception v40

    goto/16 :goto_0
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 417
    const-string v1, "reset"

    invoke-static {v1}, Lcom/prey/PreyLogger;->i(Ljava/lang/String;)V

    .line 418
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/prey/activities/CheckPasswordActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 419
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/prey/activities/CheckPasswordActivity;->startActivity(Landroid/content/Intent;)V

    .line 420
    invoke-virtual {p0}, Lcom/prey/activities/CheckPasswordActivity;->finish()V

    .line 421
    return-void
.end method
