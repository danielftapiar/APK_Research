.class public Lcom/facebook/widget/ToolTipPopup;
.super Ljava/lang/Object;
.source "ToolTipPopup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/widget/ToolTipPopup$PopupContentView;,
        Lcom/facebook/widget/ToolTipPopup$Style;
    }
.end annotation


# static fields
.field public static final DEFAULT_POPUP_DISPLAY_TIME:J = 0x1770L


# instance fields
.field private final mAnchorViewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mNuxDisplayTime:J

.field private mPopupContent:Lcom/facebook/widget/ToolTipPopup$PopupContentView;

.field private mPopupWindow:Landroid/widget/PopupWindow;

.field private final mScrollListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field private mStyle:Lcom/facebook/widget/ToolTipPopup$Style;

.field private final mText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/view/View;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "anchor"    # Landroid/view/View;

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    sget-object v0, Lcom/facebook/widget/ToolTipPopup$Style;->BLUE:Lcom/facebook/widget/ToolTipPopup$Style;

    iput-object v0, p0, Lcom/facebook/widget/ToolTipPopup;->mStyle:Lcom/facebook/widget/ToolTipPopup$Style;

    .line 62
    const-wide/16 v0, 0x1770

    iput-wide v0, p0, Lcom/facebook/widget/ToolTipPopup;->mNuxDisplayTime:J

    .line 65
    new-instance v0, Lcom/facebook/widget/ToolTipPopup$1;

    invoke-direct {v0, p0}, Lcom/facebook/widget/ToolTipPopup$1;-><init>(Lcom/facebook/widget/ToolTipPopup;)V

    iput-object v0, p0, Lcom/facebook/widget/ToolTipPopup;->mScrollListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 86
    iput-object p1, p0, Lcom/facebook/widget/ToolTipPopup;->mText:Ljava/lang/String;

    .line 87
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/facebook/widget/ToolTipPopup;->mAnchorViewRef:Ljava/lang/ref/WeakReference;

    .line 88
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/widget/ToolTipPopup;->mContext:Landroid/content/Context;

    .line 89
    return-void
.end method

.method static synthetic access$0(Lcom/facebook/widget/ToolTipPopup;)Ljava/lang/ref/WeakReference;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/facebook/widget/ToolTipPopup;->mAnchorViewRef:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$1(Lcom/facebook/widget/ToolTipPopup;)Landroid/widget/PopupWindow;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/facebook/widget/ToolTipPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$2(Lcom/facebook/widget/ToolTipPopup;)Lcom/facebook/widget/ToolTipPopup$PopupContentView;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/facebook/widget/ToolTipPopup;->mPopupContent:Lcom/facebook/widget/ToolTipPopup$PopupContentView;

    return-object v0
.end method

.method private registerObserver()V
    .locals 2

    .prologue
    .line 188
    invoke-direct {p0}, Lcom/facebook/widget/ToolTipPopup;->unregisterObserver()V

    .line 189
    iget-object v0, p0, Lcom/facebook/widget/ToolTipPopup;->mAnchorViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/facebook/widget/ToolTipPopup;->mAnchorViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/widget/ToolTipPopup;->mScrollListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 192
    :cond_0
    return-void
.end method

.method private unregisterObserver()V
    .locals 2

    .prologue
    .line 195
    iget-object v0, p0, Lcom/facebook/widget/ToolTipPopup;->mAnchorViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/facebook/widget/ToolTipPopup;->mAnchorViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/widget/ToolTipPopup;->mScrollListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 198
    :cond_0
    return-void
.end method

.method private updateArrows()V
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/facebook/widget/ToolTipPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/widget/ToolTipPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/facebook/widget/ToolTipPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isAboveAnchor()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 170
    iget-object v0, p0, Lcom/facebook/widget/ToolTipPopup;->mPopupContent:Lcom/facebook/widget/ToolTipPopup$PopupContentView;

    invoke-virtual {v0}, Lcom/facebook/widget/ToolTipPopup$PopupContentView;->showBottomArrow()V

    .line 175
    :cond_0
    :goto_0
    return-void

    .line 172
    :cond_1
    iget-object v0, p0, Lcom/facebook/widget/ToolTipPopup;->mPopupContent:Lcom/facebook/widget/ToolTipPopup$PopupContentView;

    invoke-virtual {v0}, Lcom/facebook/widget/ToolTipPopup$PopupContentView;->showTopArrow()V

    goto :goto_0
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 181
    invoke-direct {p0}, Lcom/facebook/widget/ToolTipPopup;->unregisterObserver()V

    .line 182
    iget-object v0, p0, Lcom/facebook/widget/ToolTipPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/facebook/widget/ToolTipPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 185
    :cond_0
    return-void
.end method

.method public setNuxDisplayTime(J)V
    .locals 0
    .param p1, "displayTime"    # J

    .prologue
    .line 164
    iput-wide p1, p0, Lcom/facebook/widget/ToolTipPopup;->mNuxDisplayTime:J

    .line 165
    return-void
.end method

.method public setStyle(Lcom/facebook/widget/ToolTipPopup$Style;)V
    .locals 0
    .param p1, "mStyle"    # Lcom/facebook/widget/ToolTipPopup$Style;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/facebook/widget/ToolTipPopup;->mStyle:Lcom/facebook/widget/ToolTipPopup$Style;

    .line 97
    return-void
.end method

.method public show()V
    .locals 7

    .prologue
    const/high16 v5, -0x80000000

    .line 103
    iget-object v3, p0, Lcom/facebook/widget/ToolTipPopup;->mAnchorViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 104
    new-instance v3, Lcom/facebook/widget/ToolTipPopup$PopupContentView;

    iget-object v4, p0, Lcom/facebook/widget/ToolTipPopup;->mContext:Landroid/content/Context;

    invoke-direct {v3, p0, v4}, Lcom/facebook/widget/ToolTipPopup$PopupContentView;-><init>(Lcom/facebook/widget/ToolTipPopup;Landroid/content/Context;)V

    iput-object v3, p0, Lcom/facebook/widget/ToolTipPopup;->mPopupContent:Lcom/facebook/widget/ToolTipPopup$PopupContentView;

    .line 105
    iget-object v3, p0, Lcom/facebook/widget/ToolTipPopup;->mPopupContent:Lcom/facebook/widget/ToolTipPopup$PopupContentView;

    .line 106
    sget v4, Lcom/facebook/android/R$id;->com_facebook_tooltip_bubble_view_text_body:I

    .line 105
    invoke-virtual {v3, v4}, Lcom/facebook/widget/ToolTipPopup$PopupContentView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 107
    iget-object v4, p0, Lcom/facebook/widget/ToolTipPopup;->mText:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    iget-object v3, p0, Lcom/facebook/widget/ToolTipPopup;->mStyle:Lcom/facebook/widget/ToolTipPopup$Style;

    sget-object v4, Lcom/facebook/widget/ToolTipPopup$Style;->BLUE:Lcom/facebook/widget/ToolTipPopup$Style;

    if-ne v3, v4, :cond_2

    .line 109
    iget-object v3, p0, Lcom/facebook/widget/ToolTipPopup;->mPopupContent:Lcom/facebook/widget/ToolTipPopup$PopupContentView;

    # getter for: Lcom/facebook/widget/ToolTipPopup$PopupContentView;->bodyFrame:Landroid/view/View;
    invoke-static {v3}, Lcom/facebook/widget/ToolTipPopup$PopupContentView;->access$0(Lcom/facebook/widget/ToolTipPopup$PopupContentView;)Landroid/view/View;

    move-result-object v3

    .line 110
    sget v4, Lcom/facebook/android/R$drawable;->com_facebook_tooltip_blue_background:I

    .line 109
    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 111
    iget-object v3, p0, Lcom/facebook/widget/ToolTipPopup;->mPopupContent:Lcom/facebook/widget/ToolTipPopup$PopupContentView;

    # getter for: Lcom/facebook/widget/ToolTipPopup$PopupContentView;->bottomArrow:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/facebook/widget/ToolTipPopup$PopupContentView;->access$1(Lcom/facebook/widget/ToolTipPopup$PopupContentView;)Landroid/widget/ImageView;

    move-result-object v3

    .line 112
    sget v4, Lcom/facebook/android/R$drawable;->com_facebook_tooltip_blue_bottomnub:I

    .line 111
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 113
    iget-object v3, p0, Lcom/facebook/widget/ToolTipPopup;->mPopupContent:Lcom/facebook/widget/ToolTipPopup$PopupContentView;

    # getter for: Lcom/facebook/widget/ToolTipPopup$PopupContentView;->topArrow:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/facebook/widget/ToolTipPopup$PopupContentView;->access$2(Lcom/facebook/widget/ToolTipPopup$PopupContentView;)Landroid/widget/ImageView;

    move-result-object v3

    .line 114
    sget v4, Lcom/facebook/android/R$drawable;->com_facebook_tooltip_blue_topnub:I

    .line 113
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 115
    iget-object v3, p0, Lcom/facebook/widget/ToolTipPopup;->mPopupContent:Lcom/facebook/widget/ToolTipPopup$PopupContentView;

    # getter for: Lcom/facebook/widget/ToolTipPopup$PopupContentView;->xOut:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/facebook/widget/ToolTipPopup$PopupContentView;->access$3(Lcom/facebook/widget/ToolTipPopup$PopupContentView;)Landroid/widget/ImageView;

    move-result-object v3

    sget v4, Lcom/facebook/android/R$drawable;->com_facebook_tooltip_blue_xout:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 126
    :goto_0
    iget-object v3, p0, Lcom/facebook/widget/ToolTipPopup;->mContext:Landroid/content/Context;

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 127
    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 128
    .local v1, "decorView":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 129
    .local v2, "decorWidth":I
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 130
    .local v0, "decorHeight":I
    invoke-direct {p0}, Lcom/facebook/widget/ToolTipPopup;->registerObserver()V

    .line 131
    iget-object v3, p0, Lcom/facebook/widget/ToolTipPopup;->mPopupContent:Lcom/facebook/widget/ToolTipPopup$PopupContentView;

    .line 132
    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 133
    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 131
    invoke-virtual {v3, v4, v5}, Lcom/facebook/widget/ToolTipPopup$PopupContentView;->onMeasure(II)V

    .line 134
    new-instance v3, Landroid/widget/PopupWindow;

    .line 135
    iget-object v4, p0, Lcom/facebook/widget/ToolTipPopup;->mPopupContent:Lcom/facebook/widget/ToolTipPopup$PopupContentView;

    .line 136
    iget-object v5, p0, Lcom/facebook/widget/ToolTipPopup;->mPopupContent:Lcom/facebook/widget/ToolTipPopup$PopupContentView;

    invoke-virtual {v5}, Lcom/facebook/widget/ToolTipPopup$PopupContentView;->getMeasuredWidth()I

    move-result v5

    .line 137
    iget-object v6, p0, Lcom/facebook/widget/ToolTipPopup;->mPopupContent:Lcom/facebook/widget/ToolTipPopup$PopupContentView;

    invoke-virtual {v6}, Lcom/facebook/widget/ToolTipPopup$PopupContentView;->getMeasuredHeight()I

    move-result v6

    invoke-direct {v3, v4, v5, v6}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    .line 134
    iput-object v3, p0, Lcom/facebook/widget/ToolTipPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 138
    iget-object v4, p0, Lcom/facebook/widget/ToolTipPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v3, p0, Lcom/facebook/widget/ToolTipPopup;->mAnchorViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V

    .line 139
    invoke-direct {p0}, Lcom/facebook/widget/ToolTipPopup;->updateArrows()V

    .line 140
    iget-wide v3, p0, Lcom/facebook/widget/ToolTipPopup;->mNuxDisplayTime:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    .line 141
    iget-object v3, p0, Lcom/facebook/widget/ToolTipPopup;->mPopupContent:Lcom/facebook/widget/ToolTipPopup$PopupContentView;

    new-instance v4, Lcom/facebook/widget/ToolTipPopup$2;

    invoke-direct {v4, p0}, Lcom/facebook/widget/ToolTipPopup$2;-><init>(Lcom/facebook/widget/ToolTipPopup;)V

    .line 146
    iget-wide v5, p0, Lcom/facebook/widget/ToolTipPopup;->mNuxDisplayTime:J

    .line 141
    invoke-virtual {v3, v4, v5, v6}, Lcom/facebook/widget/ToolTipPopup$PopupContentView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 148
    :cond_0
    iget-object v3, p0, Lcom/facebook/widget/ToolTipPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 149
    iget-object v3, p0, Lcom/facebook/widget/ToolTipPopup;->mPopupContent:Lcom/facebook/widget/ToolTipPopup$PopupContentView;

    new-instance v4, Lcom/facebook/widget/ToolTipPopup$3;

    invoke-direct {v4, p0}, Lcom/facebook/widget/ToolTipPopup$3;-><init>(Lcom/facebook/widget/ToolTipPopup;)V

    invoke-virtual {v3, v4}, Lcom/facebook/widget/ToolTipPopup$PopupContentView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    .end local v0    # "decorHeight":I
    .end local v1    # "decorView":Landroid/view/View;
    .end local v2    # "decorWidth":I
    :cond_1
    return-void

    .line 117
    :cond_2
    iget-object v3, p0, Lcom/facebook/widget/ToolTipPopup;->mPopupContent:Lcom/facebook/widget/ToolTipPopup$PopupContentView;

    # getter for: Lcom/facebook/widget/ToolTipPopup$PopupContentView;->bodyFrame:Landroid/view/View;
    invoke-static {v3}, Lcom/facebook/widget/ToolTipPopup$PopupContentView;->access$0(Lcom/facebook/widget/ToolTipPopup$PopupContentView;)Landroid/view/View;

    move-result-object v3

    .line 118
    sget v4, Lcom/facebook/android/R$drawable;->com_facebook_tooltip_black_background:I

    .line 117
    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 119
    iget-object v3, p0, Lcom/facebook/widget/ToolTipPopup;->mPopupContent:Lcom/facebook/widget/ToolTipPopup$PopupContentView;

    # getter for: Lcom/facebook/widget/ToolTipPopup$PopupContentView;->bottomArrow:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/facebook/widget/ToolTipPopup$PopupContentView;->access$1(Lcom/facebook/widget/ToolTipPopup$PopupContentView;)Landroid/widget/ImageView;

    move-result-object v3

    .line 120
    sget v4, Lcom/facebook/android/R$drawable;->com_facebook_tooltip_black_bottomnub:I

    .line 119
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 121
    iget-object v3, p0, Lcom/facebook/widget/ToolTipPopup;->mPopupContent:Lcom/facebook/widget/ToolTipPopup$PopupContentView;

    # getter for: Lcom/facebook/widget/ToolTipPopup$PopupContentView;->topArrow:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/facebook/widget/ToolTipPopup$PopupContentView;->access$2(Lcom/facebook/widget/ToolTipPopup$PopupContentView;)Landroid/widget/ImageView;

    move-result-object v3

    .line 122
    sget v4, Lcom/facebook/android/R$drawable;->com_facebook_tooltip_black_topnub:I

    .line 121
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 123
    iget-object v3, p0, Lcom/facebook/widget/ToolTipPopup;->mPopupContent:Lcom/facebook/widget/ToolTipPopup$PopupContentView;

    # getter for: Lcom/facebook/widget/ToolTipPopup$PopupContentView;->xOut:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/facebook/widget/ToolTipPopup$PopupContentView;->access$3(Lcom/facebook/widget/ToolTipPopup$PopupContentView;)Landroid/widget/ImageView;

    move-result-object v3

    sget v4, Lcom/facebook/android/R$drawable;->com_facebook_tooltip_black_xout:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0
.end method
