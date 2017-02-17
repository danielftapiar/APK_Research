.class public Lcom/prey/activities/TourActivity2;
.super Landroid/app/Activity;
.source "TourActivity2.java"


# instance fields
.field private id:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 3

    .prologue
    .line 86
    const/4 v0, 0x0

    .line 88
    .local v0, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/prey/activities/TourActivity2;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/prey/activities/TourActivity1;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 91
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/prey/activities/TourActivity2;->startActivity(Landroid/content/Intent;)V

    .line 92
    invoke-virtual {p0}, Lcom/prey/activities/TourActivity2;->finish()V

    .line 93
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x1

    .line 29
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    invoke-virtual {p0, v8}, Lcom/prey/activities/TourActivity2;->requestWindowFeature(I)Z

    .line 31
    invoke-virtual {p0, v8}, Lcom/prey/activities/TourActivity2;->setRequestedOrientation(I)V

    .line 33
    const v6, 0x7f040053

    invoke-virtual {p0, v6}, Lcom/prey/activities/TourActivity2;->setContentView(I)V

    .line 36
    invoke-virtual {p0}, Lcom/prey/activities/TourActivity2;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    const-string v7, "fonts/Titillium_Web/TitilliumWeb-Regular.ttf"

    invoke-static {v6, v7}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v5

    .line 37
    .local v5, "titilliumWebRegular":Landroid/graphics/Typeface;
    invoke-virtual {p0}, Lcom/prey/activities/TourActivity2;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    const-string v7, "fonts/Titillium_Web/TitilliumWeb-Bold.ttf"

    invoke-static {v6, v7}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v4

    .line 40
    .local v4, "titilliumWebBold":Landroid/graphics/Typeface;
    const v6, 0x7f10009d

    invoke-virtual {p0, v6}, Lcom/prey/activities/TourActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 41
    .local v2, "textView1":Landroid/widget/TextView;
    const v6, 0x7f1000ad

    invoke-virtual {p0, v6}, Lcom/prey/activities/TourActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 42
    .local v3, "textView2":Landroid/widget/TextView;
    const v6, 0x7f100106

    invoke-virtual {p0, v6}, Lcom/prey/activities/TourActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 43
    .local v0, "buttonTour":Landroid/widget/Button;
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 44
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 45
    invoke-virtual {v0, v4}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 48
    invoke-virtual {p0, v8}, Lcom/prey/activities/TourActivity2;->setRequestedOrientation(I)V

    .line 51
    new-instance v6, Lcom/prey/activities/TourActivity2$1;

    invoke-direct {v6, p0}, Lcom/prey/activities/TourActivity2$1;-><init>(Lcom/prey/activities/TourActivity2;)V

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    const v6, 0x7f100105

    :try_start_0
    invoke-virtual {p0, v6}, Lcom/prey/activities/TourActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 67
    .local v1, "close":Landroid/widget/ImageView;
    new-instance v6, Lcom/prey/activities/TourActivity2$2;

    invoke-direct {v6, p0}, Lcom/prey/activities/TourActivity2$2;-><init>(Lcom/prey/activities/TourActivity2;)V

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    .end local v1    # "close":Landroid/widget/ImageView;
    :goto_0
    return-void

    .line 78
    :catch_0
    move-exception v6

    goto :goto_0
.end method
