.class public Lnet/hockeyapp/android/internal/UpdateView;
.super Landroid/widget/RelativeLayout;
.source "UpdateView.java"


# static fields
.field public static final HEADER_VIEW_ID:I = 0x1001

.field public static final NAME_LABEL_ID:I = 0x1002

.field public static final UPDATE_BUTTON_ID:I = 0x1004

.field public static final VERSION_LABEL_ID:I = 0x1003

.field public static final WEB_VIEW_ID:I = 0x1005


# instance fields
.field protected headerView:Landroid/widget/RelativeLayout;

.field protected layoutHorizontally:Z

.field protected limitHeight:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 66
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lnet/hockeyapp/android/internal/UpdateView;-><init>(Landroid/content/Context;Z)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 70
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lnet/hockeyapp/android/internal/UpdateView;-><init>(Landroid/content/Context;ZZ)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "allowHorizontalLayout"    # Z

    .prologue
    .line 74
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lnet/hockeyapp/android/internal/UpdateView;-><init>(Landroid/content/Context;ZZ)V

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZZ)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "allowHorizontalLayout"    # Z
    .param p3, "limitHeight"    # Z

    .prologue
    const/4 v1, 0x0

    .line 78
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/hockeyapp/android/internal/UpdateView;->headerView:Landroid/widget/RelativeLayout;

    .line 62
    iput-boolean v1, p0, Lnet/hockeyapp/android/internal/UpdateView;->layoutHorizontally:Z

    .line 63
    iput-boolean v1, p0, Lnet/hockeyapp/android/internal/UpdateView;->limitHeight:Z

    .line 80
    if-eqz p2, :cond_0

    .line 81
    invoke-direct {p0, p1}, Lnet/hockeyapp/android/internal/UpdateView;->setLayoutHorizontally(Landroid/content/Context;)V

    .line 86
    :goto_0
    iput-boolean p3, p0, Lnet/hockeyapp/android/internal/UpdateView;->limitHeight:Z

    .line 88
    invoke-direct {p0, p1}, Lnet/hockeyapp/android/internal/UpdateView;->loadLayoutParams(Landroid/content/Context;)V

    .line 89
    invoke-direct {p0, p1}, Lnet/hockeyapp/android/internal/UpdateView;->loadHeaderView(Landroid/content/Context;)V

    .line 90
    invoke-direct {p0, p1}, Lnet/hockeyapp/android/internal/UpdateView;->loadWebView(Landroid/content/Context;)V

    .line 91
    iget-object v0, p0, Lnet/hockeyapp/android/internal/UpdateView;->headerView:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0, p1}, Lnet/hockeyapp/android/internal/UpdateView;->loadShadow(Landroid/widget/RelativeLayout;Landroid/content/Context;)V

    .line 92
    return-void

    .line 84
    :cond_0
    iput-boolean v1, p0, Lnet/hockeyapp/android/internal/UpdateView;->layoutHorizontally:Z

    goto :goto_0
.end method

.method private getButtonSelector()Landroid/graphics/drawable/Drawable;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 194
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 195
    .local v0, "drawable":Landroid/graphics/drawable/StateListDrawable;
    new-array v1, v5, [I

    const v2, -0x10100a7

    aput v2, v1, v4

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v3, -0x1000000

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 196
    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const v3, -0xbbbbbc

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 197
    new-array v1, v5, [I

    const v2, 0x10100a7

    aput v2, v1, v4

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const v3, -0x777778

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 198
    return-object v0

    .line 196
    :array_0
    .array-data 4
        -0x10100a7
        0x101009c
    .end array-data
.end method

.method private loadHeaderView(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x1

    const/4 v3, -0x1

    const/4 v4, 0x0

    .line 111
    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-direct {v1, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lnet/hockeyapp/android/internal/UpdateView;->headerView:Landroid/widget/RelativeLayout;

    .line 112
    iget-object v1, p0, Lnet/hockeyapp/android/internal/UpdateView;->headerView:Landroid/widget/RelativeLayout;

    const/16 v2, 0x1001

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setId(I)V

    .line 114
    const/4 v0, 0x0

    .line 115
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    iget-boolean v1, p0, Lnet/hockeyapp/android/internal/UpdateView;->layoutHorizontally:Z

    if-eqz v1, :cond_0

    .line 116
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v0    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/high16 v1, 0x437a0000    # 250.0f

    invoke-virtual {p0}, Lnet/hockeyapp/android/internal/UpdateView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v5, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    invoke-direct {v0, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 117
    .restart local v0    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0x9

    invoke-virtual {v0, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 118
    iget-object v1, p0, Lnet/hockeyapp/android/internal/UpdateView;->headerView:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v4, v4, v4, v4}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 124
    :goto_0
    iget-object v1, p0, Lnet/hockeyapp/android/internal/UpdateView;->headerView:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 125
    iget-object v1, p0, Lnet/hockeyapp/android/internal/UpdateView;->headerView:Landroid/widget/RelativeLayout;

    const/16 v2, 0xe6

    const/16 v3, 0xec

    const/16 v4, 0xef

    invoke-static {v2, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 127
    iget-object v1, p0, Lnet/hockeyapp/android/internal/UpdateView;->headerView:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v1, p1}, Lnet/hockeyapp/android/internal/UpdateView;->loadTitleLabel(Landroid/widget/RelativeLayout;Landroid/content/Context;)V

    .line 128
    iget-object v1, p0, Lnet/hockeyapp/android/internal/UpdateView;->headerView:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v1, p1}, Lnet/hockeyapp/android/internal/UpdateView;->loadVersionLabel(Landroid/widget/RelativeLayout;Landroid/content/Context;)V

    .line 129
    iget-object v1, p0, Lnet/hockeyapp/android/internal/UpdateView;->headerView:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v1, p1}, Lnet/hockeyapp/android/internal/UpdateView;->loadUpdateButton(Landroid/widget/RelativeLayout;Landroid/content/Context;)V

    .line 131
    iget-object v1, p0, Lnet/hockeyapp/android/internal/UpdateView;->headerView:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v1}, Lnet/hockeyapp/android/internal/UpdateView;->addView(Landroid/view/View;)V

    .line 132
    return-void

    .line 121
    :cond_0
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v0    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v1, -0x2

    invoke-direct {v0, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 122
    .restart local v0    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v1, p0, Lnet/hockeyapp/android/internal/UpdateView;->headerView:Landroid/widget/RelativeLayout;

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-virtual {p0}, Lnet/hockeyapp/android/internal/UpdateView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v5, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v1, v4, v4, v4, v2}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    goto :goto_0
.end method

.method private loadLayoutParams(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, -0x1

    .line 105
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 106
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0, v2}, Lnet/hockeyapp/android/internal/UpdateView;->setBackgroundColor(I)V

    .line 107
    invoke-virtual {p0, v0}, Lnet/hockeyapp/android/internal/UpdateView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 108
    return-void
.end method

.method private loadShadow(Landroid/widget/RelativeLayout;Landroid/content/Context;)V
    .locals 9
    .param p1, "headerView"    # Landroid/widget/RelativeLayout;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/16 v8, 0xa

    const/4 v7, 0x1

    const/4 v6, -0x1

    .line 202
    const/high16 v4, 0x40400000    # 3.0f

    invoke-virtual {p0}, Lnet/hockeyapp/android/internal/UpdateView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    invoke-static {v7, v4, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    float-to-int v1, v4

    .line 203
    .local v1, "height":I
    const/4 v2, 0x0

    .line 205
    .local v2, "params":Landroid/widget/RelativeLayout$LayoutParams;
    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 206
    .local v3, "topShadowView":Landroid/widget/ImageView;
    iget-boolean v4, p0, Lnet/hockeyapp/android/internal/UpdateView;->layoutHorizontally:Z

    if-eqz v4, :cond_0

    .line 207
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v2    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-direct {v2, v7, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 208
    .restart local v2    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v4, 0xb

    invoke-virtual {v2, v4, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 209
    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v5, -0x1000000

    invoke-direct {v4, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 216
    :goto_0
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 218
    invoke-virtual {p1, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 220
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 221
    .local v0, "bottomShadowView":Landroid/widget/ImageView;
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v2    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-direct {v2, v6, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 222
    .restart local v2    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    iget-boolean v4, p0, Lnet/hockeyapp/android/internal/UpdateView;->layoutHorizontally:Z

    if-eqz v4, :cond_1

    .line 223
    invoke-virtual {v2, v8, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 228
    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 229
    invoke-static {}, Lnet/hockeyapp/android/internal/ViewHelper;->getGradient()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 231
    invoke-virtual {p0, v0}, Lnet/hockeyapp/android/internal/UpdateView;->addView(Landroid/view/View;)V

    .line 232
    return-void

    .line 212
    .end local v0    # "bottomShadowView":Landroid/widget/ImageView;
    :cond_0
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v2    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-direct {v2, v6, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 213
    .restart local v2    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v2, v8, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 214
    invoke-static {}, Lnet/hockeyapp/android/internal/ViewHelper;->getGradient()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 226
    .restart local v0    # "bottomShadowView":Landroid/widget/ImageView;
    :cond_1
    const/4 v4, 0x3

    const/16 v5, 0x1001

    invoke-virtual {v2, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_1
.end method

.method private loadTitleLabel(Landroid/widget/RelativeLayout;Landroid/content/Context;)V
    .locals 8
    .param p1, "headerView"    # Landroid/widget/RelativeLayout;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, -0x2

    const/high16 v7, 0x41a00000    # 20.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    .line 135
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 136
    .local v2, "textView":Landroid/widget/TextView;
    const/16 v3, 0x1002

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setId(I)V

    .line 138
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 139
    .local v1, "params":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0}, Lnet/hockeyapp/android/internal/UpdateView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v5, v7, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v0, v3

    .line 140
    .local v0, "margin":I
    const/4 v3, 0x0

    invoke-virtual {v1, v0, v0, v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 141
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 142
    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 143
    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-virtual {v2, v6, v3, v6, v4}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 144
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 145
    const/high16 v3, -0x1000000

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 146
    const/4 v3, 0x2

    invoke-virtual {v2, v3, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 147
    const/4 v3, 0x0

    invoke-virtual {v2, v3, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 149
    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 150
    return-void
.end method

.method private loadUpdateButton(Landroid/widget/RelativeLayout;Landroid/content/Context;)V
    .locals 8
    .param p1, "headerView"    # Landroid/widget/RelativeLayout;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x1

    const/4 v6, -0x1

    .line 174
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 175
    .local v0, "button":Landroid/widget/Button;
    const/16 v4, 0x1004

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setId(I)V

    .line 177
    const/high16 v4, 0x41a00000    # 20.0f

    invoke-virtual {p0}, Lnet/hockeyapp/android/internal/UpdateView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    invoke-static {v7, v4, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    float-to-int v1, v4

    .line 178
    .local v1, "margin":I
    const/high16 v4, 0x42f00000    # 120.0f

    invoke-virtual {p0}, Lnet/hockeyapp/android/internal/UpdateView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    invoke-static {v7, v4, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    float-to-int v3, v4

    .line 180
    .local v3, "width":I
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 181
    .local v2, "params":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v2, v1, v1, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 182
    const/16 v4, 0x9

    invoke-virtual {v2, v4, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 183
    const/4 v4, 0x3

    const/16 v5, 0x1003

    invoke-virtual {v2, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 184
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 185
    invoke-direct {p0}, Lnet/hockeyapp/android/internal/UpdateView;->getButtonSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 186
    const-string v4, "Update"

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 187
    invoke-virtual {v0, v6}, Landroid/widget/Button;->setTextColor(I)V

    .line 188
    const/4 v4, 0x2

    const/high16 v5, 0x41800000    # 16.0f

    invoke-virtual {v0, v4, v5}, Landroid/widget/Button;->setTextSize(IF)V

    .line 190
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 191
    return-void
.end method

.method private loadVersionLabel(Landroid/widget/RelativeLayout;Landroid/content/Context;)V
    .locals 10
    .param p1, "headerView"    # Landroid/widget/RelativeLayout;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x2

    const/4 v5, -0x2

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 153
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 154
    .local v3, "textView":Landroid/widget/TextView;
    const/16 v4, 0x1003

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setId(I)V

    .line 156
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 157
    .local v2, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/high16 v4, 0x41a00000    # 20.0f

    invoke-virtual {p0}, Lnet/hockeyapp/android/internal/UpdateView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    invoke-static {v6, v4, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    float-to-int v0, v4

    .line 158
    .local v0, "marginSide":I
    const/high16 v4, 0x41200000    # 10.0f

    invoke-virtual {p0}, Lnet/hockeyapp/android/internal/UpdateView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    invoke-static {v6, v4, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    float-to-int v1, v4

    .line 159
    .local v1, "marginTop":I
    const/4 v4, 0x0

    invoke-virtual {v2, v0, v1, v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 160
    const/4 v4, 0x3

    const/16 v5, 0x1002

    invoke-virtual {v2, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 161
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 162
    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 163
    const/4 v4, -0x1

    invoke-virtual {v3, v8, v7, v8, v4}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 164
    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setLines(I)V

    .line 165
    const v4, 0x3f8ccccd    # 1.1f

    invoke-virtual {v3, v7, v4}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 166
    const/high16 v4, -0x1000000

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 167
    const/high16 v4, 0x41800000    # 16.0f

    invoke-virtual {v3, v9, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 168
    const/4 v4, 0x0

    invoke-virtual {v3, v4, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 170
    invoke-virtual {p1, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 171
    return-void
.end method

.method private loadWebView(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v8, 0x1001

    const/4 v7, 0x1

    const/4 v3, -0x1

    const/4 v6, 0x0

    .line 235
    new-instance v2, Landroid/webkit/WebView;

    invoke-direct {v2, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 236
    .local v2, "webView":Landroid/webkit/WebView;
    const/16 v4, 0x1005

    invoke-virtual {v2, v4}, Landroid/webkit/WebView;->setId(I)V

    .line 238
    const/high16 v4, 0x43c80000    # 400.0f

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    invoke-static {v7, v4, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    float-to-int v0, v4

    .line 239
    .local v0, "height":I
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget-boolean v4, p0, Lnet/hockeyapp/android/internal/UpdateView;->limitHeight:Z

    if-eqz v4, :cond_0

    .end local v0    # "height":I
    :goto_0
    invoke-direct {v1, v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 240
    .local v1, "params":Landroid/widget/RelativeLayout$LayoutParams;
    iget-boolean v4, p0, Lnet/hockeyapp/android/internal/UpdateView;->layoutHorizontally:Z

    if-eqz v4, :cond_1

    .line 241
    invoke-virtual {v1, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 246
    :goto_1
    invoke-virtual {v1, v6, v6, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 247
    invoke-virtual {v2, v1}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 248
    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 250
    invoke-virtual {p0, v2}, Lnet/hockeyapp/android/internal/UpdateView;->addView(Landroid/view/View;)V

    .line 251
    return-void

    .end local v1    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v0    # "height":I
    :cond_0
    move v0, v3

    .line 239
    goto :goto_0

    .line 244
    .end local v0    # "height":I
    .restart local v1    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_1
    const/4 v4, 0x3

    invoke-virtual {v1, v4, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_1
.end method

.method private setLayoutHorizontally(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 95
    invoke-virtual {p0}, Lnet/hockeyapp/android/internal/UpdateView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v0, v1, Landroid/content/res/Configuration;->orientation:I

    .line 96
    .local v0, "orientation":I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 97
    const/4 v1, 0x1

    iput-boolean v1, p0, Lnet/hockeyapp/android/internal/UpdateView;->layoutHorizontally:Z

    .line 102
    :goto_0
    return-void

    .line 100
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lnet/hockeyapp/android/internal/UpdateView;->layoutHorizontally:Z

    goto :goto_0
.end method
