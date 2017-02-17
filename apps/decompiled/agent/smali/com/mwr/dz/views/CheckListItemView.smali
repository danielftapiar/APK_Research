.class public Lcom/mwr/dz/views/CheckListItemView;
.super Landroid/widget/LinearLayout;
.source "CheckListItemView.java"


# instance fields
.field private label:Landroid/widget/TextView;

.field private status:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 19
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 15
    iput-object v0, p0, Lcom/mwr/dz/views/CheckListItemView;->label:Landroid/widget/TextView;

    .line 16
    iput-object v0, p0, Lcom/mwr/dz/views/CheckListItemView;->status:Landroid/widget/ImageView;

    .line 21
    invoke-direct {p0}, Lcom/mwr/dz/views/CheckListItemView;->setUpView()V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 25
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    iput-object v1, p0, Lcom/mwr/dz/views/CheckListItemView;->label:Landroid/widget/TextView;

    .line 16
    iput-object v1, p0, Lcom/mwr/dz/views/CheckListItemView;->status:Landroid/widget/ImageView;

    .line 27
    invoke-direct {p0}, Lcom/mwr/dz/views/CheckListItemView;->setUpView()V

    .line 29
    invoke-virtual {p0}, Lcom/mwr/dz/views/CheckListItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/mwr/dz/R$styleable;->CheckListItemView:[I

    invoke-virtual {v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 31
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mwr/dz/views/CheckListItemView;->setLabel(Ljava/lang/String;)V

    .line 32
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/mwr/dz/views/CheckListItemView;->setStatus(Z)V

    .line 34
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 35
    return-void
.end method

.method private setUpView()V
    .locals 3

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/mwr/dz/views/CheckListItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f030005

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mwr/dz/views/CheckListItemView;->addView(Landroid/view/View;)V

    .line 52
    const v0, 0x7f09001e

    invoke-virtual {p0, v0}, Lcom/mwr/dz/views/CheckListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mwr/dz/views/CheckListItemView;->label:Landroid/widget/TextView;

    .line 53
    const v0, 0x7f09001d

    invoke-virtual {p0, v0}, Lcom/mwr/dz/views/CheckListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mwr/dz/views/CheckListItemView;->status:Landroid/widget/ImageView;

    .line 54
    return-void
.end method


# virtual methods
.method public setLabel(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/mwr/dz/views/CheckListItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mwr/dz/views/CheckListItemView;->setLabel(Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/mwr/dz/views/CheckListItemView;->label:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    return-void
.end method

.method public setStatus(Z)V
    .locals 2
    .param p1, "status"    # Z

    .prologue
    .line 46
    iget-object v1, p0, Lcom/mwr/dz/views/CheckListItemView;->status:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const v0, 0x108000d

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 47
    return-void

    .line 46
    :cond_0
    const v0, 0x108000e

    goto :goto_0
.end method
