.class public Lcom/viewpagerindicator/TabPageIndicator$TabView;
.super Landroid/widget/LinearLayout;
.source "TabPageIndicator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/viewpagerindicator/TabPageIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TabView"
.end annotation


# instance fields
.field private mIndex:I

.field private mParent:Lcom/viewpagerindicator/TabPageIndicator;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 220
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 221
    return-void
.end method


# virtual methods
.method public getIndex()I
    .locals 1

    .prologue
    .line 243
    iget v0, p0, Lcom/viewpagerindicator/TabPageIndicator$TabView;->mIndex:I

    return v0
.end method

.method public init(Lcom/viewpagerindicator/TabPageIndicator;Ljava/lang/String;I)V
    .locals 2
    .param p1, "parent"    # Lcom/viewpagerindicator/TabPageIndicator;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "index"    # I

    .prologue
    .line 224
    iput-object p1, p0, Lcom/viewpagerindicator/TabPageIndicator$TabView;->mParent:Lcom/viewpagerindicator/TabPageIndicator;

    .line 225
    iput p3, p0, Lcom/viewpagerindicator/TabPageIndicator$TabView;->mIndex:I

    .line 227
    const v1, 0x1020014

    invoke-virtual {p0, v1}, Lcom/viewpagerindicator/TabPageIndicator$TabView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 228
    .local v0, "textView":Landroid/widget/TextView;
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 229
    return-void
.end method

.method public onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 233
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 236
    iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicator$TabView;->mParent:Lcom/viewpagerindicator/TabPageIndicator;

    iget v0, v0, Lcom/viewpagerindicator/TabPageIndicator;->mMaxTabWidth:I

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/viewpagerindicator/TabPageIndicator$TabView;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lcom/viewpagerindicator/TabPageIndicator$TabView;->mParent:Lcom/viewpagerindicator/TabPageIndicator;

    iget v1, v1, Lcom/viewpagerindicator/TabPageIndicator;->mMaxTabWidth:I

    if-le v0, v1, :cond_0

    .line 237
    iget-object v0, p0, Lcom/viewpagerindicator/TabPageIndicator$TabView;->mParent:Lcom/viewpagerindicator/TabPageIndicator;

    iget v0, v0, Lcom/viewpagerindicator/TabPageIndicator;->mMaxTabWidth:I

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-super {p0, v0, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 240
    :cond_0
    return-void
.end method
