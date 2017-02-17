.class public Lcom/prey/activities/TourActivity1;
.super Landroid/app/Activity;
.source "TourActivity1.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prey/activities/TourActivity1$TourInitTask;
    }
.end annotation


# instance fields
.field private id:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 3

    .prologue
    .line 96
    const/4 v0, 0x0

    .line 98
    .local v0, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/prey/activities/TourActivity1;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/prey/activities/CheckPasswordActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 100
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/prey/activities/TourActivity1;->startActivity(Landroid/content/Intent;)V

    .line 101
    invoke-virtual {p0}, Lcom/prey/activities/TourActivity1;->finish()V

    .line 102
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x0

    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 37
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    invoke-virtual {p0, v6}, Lcom/prey/activities/TourActivity1;->requestWindowFeature(I)Z

    .line 39
    invoke-virtual {p0, v6}, Lcom/prey/activities/TourActivity1;->setRequestedOrientation(I)V

    .line 42
    const v6, 0x7f040052

    invoke-virtual {p0, v6}, Lcom/prey/activities/TourActivity1;->setContentView(I)V

    .line 45
    invoke-virtual {p0}, Lcom/prey/activities/TourActivity1;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    const-string v7, "fonts/Titillium_Web/TitilliumWeb-Regular.ttf"

    invoke-static {v6, v7}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v5

    .line 46
    .local v5, "titilliumWebRegular":Landroid/graphics/Typeface;
    invoke-virtual {p0}, Lcom/prey/activities/TourActivity1;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    const-string v7, "fonts/Titillium_Web/TitilliumWeb-Bold.ttf"

    invoke-static {v6, v7}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v4

    .line 49
    .local v4, "titilliumWebBold":Landroid/graphics/Typeface;
    const v6, 0x7f10009d

    invoke-virtual {p0, v6}, Lcom/prey/activities/TourActivity1;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 50
    .local v2, "textView1":Landroid/widget/TextView;
    const v6, 0x7f1000ad

    invoke-virtual {p0, v6}, Lcom/prey/activities/TourActivity1;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 51
    .local v3, "textView2":Landroid/widget/TextView;
    const v6, 0x7f100106

    invoke-virtual {p0, v6}, Lcom/prey/activities/TourActivity1;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 52
    .local v0, "buttonTour":Landroid/widget/Button;
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 53
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 54
    invoke-virtual {v0, v4}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 57
    new-instance v6, Lcom/prey/activities/TourActivity1$1;

    invoke-direct {v6, p0}, Lcom/prey/activities/TourActivity1$1;-><init>(Lcom/prey/activities/TourActivity1;)V

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    const v6, 0x7f100105

    :try_start_0
    invoke-virtual {p0, v6}, Lcom/prey/activities/TourActivity1;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 72
    .local v1, "close":Landroid/widget/ImageView;
    new-instance v6, Lcom/prey/activities/TourActivity1$2;

    invoke-direct {v6, p0}, Lcom/prey/activities/TourActivity1$2;-><init>(Lcom/prey/activities/TourActivity1;)V

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    .end local v1    # "close":Landroid/widget/ImageView;
    :goto_0
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0xb

    if-lt v6, v7, :cond_0

    .line 88
    new-instance v6, Lcom/prey/activities/TourActivity1$TourInitTask;

    invoke-direct {v6, p0, v9}, Lcom/prey/activities/TourActivity1$TourInitTask;-><init>(Lcom/prey/activities/TourActivity1;Lcom/prey/activities/TourActivity1$1;)V

    sget-object v7, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v8, v8, [Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Lcom/prey/activities/TourActivity1$TourInitTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 93
    :goto_1
    return-void

    .line 90
    :cond_0
    new-instance v6, Lcom/prey/activities/TourActivity1$TourInitTask;

    invoke-direct {v6, p0, v9}, Lcom/prey/activities/TourActivity1$TourInitTask;-><init>(Lcom/prey/activities/TourActivity1;Lcom/prey/activities/TourActivity1$1;)V

    new-array v7, v8, [Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/prey/activities/TourActivity1$TourInitTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1

    .line 83
    :catch_0
    move-exception v6

    goto :goto_0
.end method
