.class public Lcom/prey/activities/InitActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "InitActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prey/activities/InitActivity$OnboardingCompletedTask;,
        Lcom/prey/activities/InitActivity$OnboardingInitTask;,
        Lcom/prey/activities/InitActivity$DemoObjectFragment6;,
        Lcom/prey/activities/InitActivity$DemoObjectFragment5;,
        Lcom/prey/activities/InitActivity$DemoObjectFragment4;,
        Lcom/prey/activities/InitActivity$DemoObjectFragment3;,
        Lcom/prey/activities/InitActivity$DemoObjectFragment2;,
        Lcom/prey/activities/InitActivity$DemoObjectFragment1;,
        Lcom/prey/activities/InitActivity$DemoObjectFragment0;,
        Lcom/prey/activities/InitActivity$OnboardingPagerAdapter;
    }
.end annotation


# instance fields
.field mViewPager:Landroid/support/v4/view/ViewPager;

.field onboardingPagerAdapter:Lcom/prey/activities/InitActivity$OnboardingPagerAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public movePage(I)V
    .locals 1
    .param p1, "page"    # I

    .prologue
    .line 178
    iget-object v0, p0, Lcom/prey/activities/InitActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 179
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 64
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 65
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    .line 69
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 70
    invoke-virtual {p0, v5}, Lcom/prey/activities/InitActivity;->requestWindowFeature(I)Z

    .line 71
    invoke-virtual {p0, v5}, Lcom/prey/activities/InitActivity;->setRequestedOrientation(I)V

    .line 72
    const v5, 0x7f040034

    invoke-virtual {p0, v5}, Lcom/prey/activities/InitActivity;->setContentView(I)V

    .line 73
    const-string v5, "onCreate of MenuActivity"

    invoke-static {v5}, Lcom/prey/PreyLogger;->i(Ljava/lang/String;)V

    .line 75
    new-instance v5, Lcom/prey/activities/InitActivity$OnboardingPagerAdapter;

    invoke-virtual {p0}, Lcom/prey/activities/InitActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/prey/activities/InitActivity$OnboardingPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    iput-object v5, p0, Lcom/prey/activities/InitActivity;->onboardingPagerAdapter:Lcom/prey/activities/InitActivity$OnboardingPagerAdapter;

    .line 76
    const v5, 0x7f1000be

    invoke-virtual {p0, v5}, Lcom/prey/activities/InitActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/support/v4/view/ViewPager;

    iput-object v5, p0, Lcom/prey/activities/InitActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 77
    iget-object v5, p0, Lcom/prey/activities/InitActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v6, p0, Lcom/prey/activities/InitActivity;->onboardingPagerAdapter:Lcom/prey/activities/InitActivity$OnboardingPagerAdapter;

    invoke-virtual {v5, v6}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 79
    const v5, 0x7f1000c1

    invoke-virtual {p0, v5}, Lcom/prey/activities/InitActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 80
    .local v0, "buttonHome":Landroid/widget/Button;
    new-instance v5, Lcom/prey/activities/InitActivity$1;

    invoke-direct {v5, p0}, Lcom/prey/activities/InitActivity$1;-><init>(Lcom/prey/activities/InitActivity;)V

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    const v5, 0x7f1000c2

    invoke-virtual {p0, v5}, Lcom/prey/activities/InitActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 91
    .local v3, "textView":Landroid/widget/TextView;
    new-instance v5, Lcom/prey/activities/InitActivity$2;

    invoke-direct {v5, p0}, Lcom/prey/activities/InitActivity$2;-><init>(Lcom/prey/activities/InitActivity;)V

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    invoke-virtual {p0}, Lcom/prey/activities/InitActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    const-string v6, "fonts/Titillium_Web/TitilliumWeb-Bold.ttf"

    invoke-static {v5, v6}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v4

    .line 101
    .local v4, "titilliumWebBold":Landroid/graphics/Typeface;
    invoke-virtual {v0, v4}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 104
    const v5, 0x7f1000bf

    invoke-virtual {p0, v5}, Lcom/prey/activities/InitActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 105
    .local v1, "larr":Landroid/widget/LinearLayout;
    const v5, 0x7f1000c0

    invoke-virtual {p0, v5}, Lcom/prey/activities/InitActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 106
    .local v2, "rarr":Landroid/widget/LinearLayout;
    const/16 v5, 0x8

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 107
    new-instance v5, Lcom/prey/activities/InitActivity$3;

    invoke-direct {v5, p0, v1, v2}, Lcom/prey/activities/InitActivity$3;-><init>(Lcom/prey/activities/InitActivity;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    new-instance v5, Lcom/prey/activities/InitActivity$4;

    invoke-direct {v5, p0, v1, v2}, Lcom/prey/activities/InitActivity$4;-><init>(Lcom/prey/activities/InitActivity;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    iget-object v5, p0, Lcom/prey/activities/InitActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    new-instance v6, Lcom/prey/activities/InitActivity$5;

    invoke-direct {v6, p0, v1, v2}, Lcom/prey/activities/InitActivity$5;-><init>(Lcom/prey/activities/InitActivity;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V

    invoke-virtual {v5, v6}, Landroid/support/v4/view/ViewPager;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 159
    invoke-virtual {p0}, Lcom/prey/activities/InitActivity;->onboardingInit()V

    .line 161
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 58
    const-string v0, "onPause of InitActivity"

    invoke-static {v0}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 59
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    .line 60
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 51
    const-string v0, "onResume of InitActivity"

    invoke-static {v0}, Lcom/prey/PreyLogger;->d(Ljava/lang/String;)V

    .line 52
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 54
    return-void
.end method

.method public onboardingCompleted()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 171
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 172
    new-instance v0, Lcom/prey/activities/InitActivity$OnboardingCompletedTask;

    invoke-direct {v0, p0, v3}, Lcom/prey/activities/InitActivity$OnboardingCompletedTask;-><init>(Lcom/prey/activities/InitActivity;Lcom/prey/activities/InitActivity$1;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/prey/activities/InitActivity$OnboardingCompletedTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 175
    :goto_0
    return-void

    .line 174
    :cond_0
    new-instance v0, Lcom/prey/activities/InitActivity$OnboardingCompletedTask;

    invoke-direct {v0, p0, v3}, Lcom/prey/activities/InitActivity$OnboardingCompletedTask;-><init>(Lcom/prey/activities/InitActivity;Lcom/prey/activities/InitActivity$1;)V

    new-array v1, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/prey/activities/InitActivity$OnboardingCompletedTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public onboardingInit()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 164
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 165
    new-instance v0, Lcom/prey/activities/InitActivity$OnboardingInitTask;

    invoke-direct {v0, p0, v3}, Lcom/prey/activities/InitActivity$OnboardingInitTask;-><init>(Lcom/prey/activities/InitActivity;Lcom/prey/activities/InitActivity$1;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/prey/activities/InitActivity$OnboardingInitTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 168
    :goto_0
    return-void

    .line 167
    :cond_0
    new-instance v0, Lcom/prey/activities/InitActivity$OnboardingInitTask;

    invoke-direct {v0, p0, v3}, Lcom/prey/activities/InitActivity$OnboardingInitTask;-><init>(Lcom/prey/activities/InitActivity;Lcom/prey/activities/InitActivity$1;)V

    new-array v1, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/prey/activities/InitActivity$OnboardingInitTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
