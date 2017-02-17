.class Lcom/prey/activities/InitActivity$3;
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
    .line 107
    iput-object p1, p0, Lcom/prey/activities/InitActivity$3;->this$0:Lcom/prey/activities/InitActivity;

    iput-object p2, p0, Lcom/prey/activities/InitActivity$3;->val$larr:Landroid/widget/LinearLayout;

    iput-object p3, p0, Lcom/prey/activities/InitActivity$3;->val$rarr:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 111
    iget-object v1, p0, Lcom/prey/activities/InitActivity$3;->this$0:Lcom/prey/activities/InitActivity;

    iget-object v1, v1, Lcom/prey/activities/InitActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    .line 112
    .local v0, "currentItem":I
    iget-object v1, p0, Lcom/prey/activities/InitActivity$3;->val$larr:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 113
    iget-object v1, p0, Lcom/prey/activities/InitActivity$3;->val$rarr:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 114
    if-nez v0, :cond_0

    .line 115
    iget-object v1, p0, Lcom/prey/activities/InitActivity$3;->val$larr:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 118
    :cond_0
    iget-object v1, p0, Lcom/prey/activities/InitActivity$3;->this$0:Lcom/prey/activities/InitActivity;

    iget-object v1, v1, Lcom/prey/activities/InitActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 119
    return-void
.end method
