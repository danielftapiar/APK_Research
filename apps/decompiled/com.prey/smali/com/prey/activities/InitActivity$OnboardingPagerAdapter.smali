.class public Lcom/prey/activities/InitActivity$OnboardingPagerAdapter;
.super Landroid/support/v4/app/FragmentStatePagerAdapter;
.source "InitActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prey/activities/InitActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OnboardingPagerAdapter"
.end annotation


# instance fields
.field public page:I


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentManager;)V
    .locals 1
    .param p1, "fm"    # Landroid/support/v4/app/FragmentManager;

    .prologue
    .line 185
    invoke-direct {p0, p1}, Landroid/support/v4/app/FragmentStatePagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 188
    const/4 v0, 0x0

    iput v0, p0, Lcom/prey/activities/InitActivity$OnboardingPagerAdapter;->page:I

    .line 186
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 226
    const/4 v0, 0x7

    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 193
    iput p1, p0, Lcom/prey/activities/InitActivity$OnboardingPagerAdapter;->page:I

    .line 194
    const/4 v0, 0x0

    .line 195
    .local v0, "fragment":Landroid/support/v4/app/Fragment;
    if-nez p1, :cond_0

    .line 196
    new-instance v0, Lcom/prey/activities/InitActivity$DemoObjectFragment0;

    .end local v0    # "fragment":Landroid/support/v4/app/Fragment;
    invoke-direct {v0}, Lcom/prey/activities/InitActivity$DemoObjectFragment0;-><init>()V

    .line 200
    .restart local v0    # "fragment":Landroid/support/v4/app/Fragment;
    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 201
    new-instance v0, Lcom/prey/activities/InitActivity$DemoObjectFragment1;

    .end local v0    # "fragment":Landroid/support/v4/app/Fragment;
    invoke-direct {v0}, Lcom/prey/activities/InitActivity$DemoObjectFragment1;-><init>()V

    .line 203
    .restart local v0    # "fragment":Landroid/support/v4/app/Fragment;
    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    .line 204
    new-instance v0, Lcom/prey/activities/InitActivity$DemoObjectFragment2;

    .end local v0    # "fragment":Landroid/support/v4/app/Fragment;
    invoke-direct {v0}, Lcom/prey/activities/InitActivity$DemoObjectFragment2;-><init>()V

    .line 206
    .restart local v0    # "fragment":Landroid/support/v4/app/Fragment;
    :cond_2
    const/4 v1, 0x3

    if-ne p1, v1, :cond_3

    .line 207
    new-instance v0, Lcom/prey/activities/InitActivity$DemoObjectFragment3;

    .end local v0    # "fragment":Landroid/support/v4/app/Fragment;
    invoke-direct {v0}, Lcom/prey/activities/InitActivity$DemoObjectFragment3;-><init>()V

    .line 209
    .restart local v0    # "fragment":Landroid/support/v4/app/Fragment;
    :cond_3
    const/4 v1, 0x4

    if-ne p1, v1, :cond_4

    .line 210
    new-instance v0, Lcom/prey/activities/InitActivity$DemoObjectFragment4;

    .end local v0    # "fragment":Landroid/support/v4/app/Fragment;
    invoke-direct {v0}, Lcom/prey/activities/InitActivity$DemoObjectFragment4;-><init>()V

    .line 212
    .restart local v0    # "fragment":Landroid/support/v4/app/Fragment;
    :cond_4
    const/4 v1, 0x5

    if-ne p1, v1, :cond_5

    .line 213
    new-instance v0, Lcom/prey/activities/InitActivity$DemoObjectFragment5;

    .end local v0    # "fragment":Landroid/support/v4/app/Fragment;
    invoke-direct {v0}, Lcom/prey/activities/InitActivity$DemoObjectFragment5;-><init>()V

    .line 215
    .restart local v0    # "fragment":Landroid/support/v4/app/Fragment;
    :cond_5
    const/4 v1, 0x6

    if-ne p1, v1, :cond_6

    .line 216
    new-instance v0, Lcom/prey/activities/InitActivity$DemoObjectFragment6;

    .end local v0    # "fragment":Landroid/support/v4/app/Fragment;
    invoke-direct {v0}, Lcom/prey/activities/InitActivity$DemoObjectFragment6;-><init>()V

    .line 220
    .restart local v0    # "fragment":Landroid/support/v4/app/Fragment;
    :cond_6
    return-object v0
.end method
