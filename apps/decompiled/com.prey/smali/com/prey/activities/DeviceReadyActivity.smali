.class public Lcom/prey/activities/DeviceReadyActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "DeviceReadyActivity.java"

# interfaces
.implements Landroid/support/v4/app/ActivityCompat$OnRequestPermissionsResultCallback;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 3

    .prologue
    .line 50
    const/4 v0, 0x0

    .line 51
    .local v0, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/prey/activities/DeviceReadyActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-class v2, Lcom/prey/activities/CheckPasswordActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 52
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/prey/activities/DeviceReadyActivity;->startActivity(Landroid/content/Intent;)V

    .line 53
    invoke-virtual {p0}, Lcom/prey/activities/DeviceReadyActivity;->finish()V

    .line 55
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x1

    .line 70
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 71
    invoke-virtual {p0, v8}, Lcom/prey/activities/DeviceReadyActivity;->supportRequestWindowFeature(I)Z

    .line 72
    invoke-virtual {p0, v8}, Lcom/prey/activities/DeviceReadyActivity;->setRequestedOrientation(I)V

    .line 74
    const v8, 0x7f04002b

    invoke-virtual {p0, v8}, Lcom/prey/activities/DeviceReadyActivity;->setContentView(I)V

    .line 76
    const-string v8, "onCreate of DeviceReadyActivity"

    invoke-static {v8}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0}, Lcom/prey/activities/DeviceReadyActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v8

    const-string v9, "fonts/Titillium_Web/TitilliumWeb-Bold.ttf"

    invoke-static {v8, v9}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v7

    .line 81
    .local v7, "titilliumWebBold":Landroid/graphics/Typeface;
    invoke-virtual {p0}, Lcom/prey/activities/DeviceReadyActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v8

    const-string v9, "fonts/MagdaClean/magdacleanmono-regular.ttf"

    invoke-static {v8, v9}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    .line 84
    .local v2, "magdacleanmonoRegular":Landroid/graphics/Typeface;
    const v8, 0x7f1000b0

    invoke-virtual {p0, v8}, Lcom/prey/activities/DeviceReadyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 85
    .local v3, "textView3_1":Landroid/widget/TextView;
    const v8, 0x7f1000b1

    invoke-virtual {p0, v8}, Lcom/prey/activities/DeviceReadyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 86
    .local v4, "textView3_2":Landroid/widget/TextView;
    const v8, 0x7f1000b4

    invoke-virtual {p0, v8}, Lcom/prey/activities/DeviceReadyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 87
    .local v5, "textView4_1":Landroid/widget/TextView;
    const v8, 0x7f1000b5

    invoke-virtual {p0, v8}, Lcom/prey/activities/DeviceReadyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 91
    .local v6, "textView4_2":Landroid/widget/TextView;
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 92
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 93
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 94
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 98
    const v8, 0x7f10009c

    invoke-virtual {p0, v8}, Lcom/prey/activities/DeviceReadyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 99
    .local v0, "linearLayout1":Landroid/widget/LinearLayout;
    new-instance v8, Lcom/prey/activities/DeviceReadyActivity$1;

    invoke-direct {v8, p0}, Lcom/prey/activities/DeviceReadyActivity$1;-><init>(Lcom/prey/activities/DeviceReadyActivity;)V

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    const v8, 0x7f1000ae

    invoke-virtual {p0, v8}, Lcom/prey/activities/DeviceReadyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 112
    .local v1, "linearLayout2":Landroid/widget/LinearLayout;
    new-instance v8, Lcom/prey/activities/DeviceReadyActivity$2;

    invoke-direct {v8, p0}, Lcom/prey/activities/DeviceReadyActivity$2;-><init>(Lcom/prey/activities/DeviceReadyActivity;)V

    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 60
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 62
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Lcom/prey/activities/DeviceReadyActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 63
    .local v0, "nManager":Landroid/app/NotificationManager;
    const-string v1, "PREY"

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 64
    return-void
.end method
