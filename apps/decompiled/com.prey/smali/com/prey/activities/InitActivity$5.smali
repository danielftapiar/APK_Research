.class Lcom/prey/activities/InitActivity$5;
.super Ljava/lang/Object;
.source "InitActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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
    .line 138
    iput-object p1, p0, Lcom/prey/activities/InitActivity$5;->this$0:Lcom/prey/activities/InitActivity;

    iput-object p2, p0, Lcom/prey/activities/InitActivity$5;->val$larr:Landroid/widget/LinearLayout;

    iput-object p3, p0, Lcom/prey/activities/InitActivity$5;->val$rarr:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 142
    iget-object v1, p0, Lcom/prey/activities/InitActivity$5;->this$0:Lcom/prey/activities/InitActivity;

    iget-object v1, v1, Lcom/prey/activities/InitActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    .line 143
    .local v0, "currentItem":I
    iget-object v1, p0, Lcom/prey/activities/InitActivity$5;->val$larr:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 144
    iget-object v1, p0, Lcom/prey/activities/InitActivity$5;->val$rarr:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 145
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "currentItem:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/prey/PreyLogger;->i(Ljava/lang/String;)V

    .line 146
    if-nez v0, :cond_0

    .line 147
    iget-object v1, p0, Lcom/prey/activities/InitActivity$5;->val$larr:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 149
    :cond_0
    const/4 v1, 0x5

    if-lt v0, v1, :cond_1

    .line 150
    iget-object v1, p0, Lcom/prey/activities/InitActivity$5;->val$rarr:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 151
    iget-object v1, p0, Lcom/prey/activities/InitActivity$5;->this$0:Lcom/prey/activities/InitActivity;

    invoke-virtual {v1}, Lcom/prey/activities/InitActivity;->onboardingCompleted()V

    .line 154
    :cond_1
    return v3
.end method
