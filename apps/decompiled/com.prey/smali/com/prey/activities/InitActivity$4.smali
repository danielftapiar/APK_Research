.class Lcom/prey/activities/InitActivity$4;
.super Ljava/lang/Object;
.source "InitActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prey/activities/InitActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/prey/activities/InitActivity;

.field final synthetic val$larr:Landroid/widget/LinearLayout;

.field final synthetic val$rarr:Landroid/widget/LinearLayout;


# direct methods
.method constructor <init>(Lcom/prey/activities/InitActivity;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/prey/activities/InitActivity;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/prey/activities/InitActivity$4;->this$0:Lcom/prey/activities/InitActivity;

    iput-object p2, p0, Lcom/prey/activities/InitActivity$4;->val$larr:Landroid/widget/LinearLayout;

    iput-object p3, p0, Lcom/prey/activities/InitActivity$4;->val$rarr:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 126
    iget-object v1, p0, Lcom/prey/activities/InitActivity$4;->this$0:Lcom/prey/activities/InitActivity;

    iget-object v1, v1, Lcom/prey/activities/InitActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    .line 127
    .local v0, "currentItem":I
    iget-object v1, p0, Lcom/prey/activities/InitActivity$4;->val$larr:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 128
    iget-object v1, p0, Lcom/prey/activities/InitActivity$4;->val$rarr:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 129
    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    .line 130
    iget-object v1, p0, Lcom/prey/activities/InitActivity$4;->val$rarr:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 131
    iget-object v1, p0, Lcom/prey/activities/InitActivity$4;->this$0:Lcom/prey/activities/InitActivity;

    invoke-virtual {v1}, Lcom/prey/activities/InitActivity;->onboardingCompleted()V

    .line 134
    :cond_0
    iget-object v1, p0, Lcom/prey/activities/InitActivity$4;->this$0:Lcom/prey/activities/InitActivity;

    iget-object v1, v1, Lcom/prey/activities/InitActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 135
    return-void
.end method
