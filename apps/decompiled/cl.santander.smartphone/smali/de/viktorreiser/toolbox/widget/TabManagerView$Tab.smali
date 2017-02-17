.class public Lde/viktorreiser/toolbox/widget/TabManagerView$Tab;
.super Ljava/lang/Object;
.source "TabManagerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/viktorreiser/toolbox/widget/TabManagerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Tab"
.end annotation


# instance fields
.field protected content:Landroid/view/View;

.field protected context:Landroid/content/Context;

.field protected image:Landroid/graphics/drawable/Drawable;

.field protected position:I

.field protected tag:Ljava/lang/String;

.field protected title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 944
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 939
    const/4 v0, -0x1

    iput v0, p0, Lde/viktorreiser/toolbox/widget/TabManagerView$Tab;->position:I

    .line 945
    iput-object p1, p0, Lde/viktorreiser/toolbox/widget/TabManagerView$Tab;->context:Landroid/content/Context;

    .line 946
    return-void
.end method


# virtual methods
.method public setContent(I)Lde/viktorreiser/toolbox/widget/TabManagerView$Tab;
    .locals 2
    .param p1, "resId"    # I

    .prologue
    .line 1028
    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/TabManagerView$Tab;->context:Landroid/content/Context;

    .line 1029
    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1028
    iput-object v0, p0, Lde/viktorreiser/toolbox/widget/TabManagerView$Tab;->content:Landroid/view/View;

    .line 1030
    return-object p0
.end method

.method public setContent(Landroid/view/View;)Lde/viktorreiser/toolbox/widget/TabManagerView$Tab;
    .locals 0
    .param p1, "content"    # Landroid/view/View;

    .prologue
    .line 1041
    iput-object p1, p0, Lde/viktorreiser/toolbox/widget/TabManagerView$Tab;->content:Landroid/view/View;

    .line 1042
    return-object p0
.end method

.method public setImage(I)Lde/viktorreiser/toolbox/widget/TabManagerView$Tab;
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 992
    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/TabManagerView$Tab;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lde/viktorreiser/toolbox/widget/TabManagerView$Tab;->image:Landroid/graphics/drawable/Drawable;

    .line 993
    return-object p0
.end method

.method public setImage(Landroid/graphics/drawable/Drawable;)Lde/viktorreiser/toolbox/widget/TabManagerView$Tab;
    .locals 0
    .param p1, "image"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1004
    iput-object p1, p0, Lde/viktorreiser/toolbox/widget/TabManagerView$Tab;->image:Landroid/graphics/drawable/Drawable;

    .line 1005
    return-object p0
.end method

.method public setPosition(I)Lde/viktorreiser/toolbox/widget/TabManagerView$Tab;
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 1016
    iput p1, p0, Lde/viktorreiser/toolbox/widget/TabManagerView$Tab;->position:I

    .line 1017
    return-object p0
.end method

.method public setTag(Ljava/lang/String;)Lde/viktorreiser/toolbox/widget/TabManagerView$Tab;
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 956
    iput-object p1, p0, Lde/viktorreiser/toolbox/widget/TabManagerView$Tab;->tag:Ljava/lang/String;

    .line 957
    return-object p0
.end method

.method public setTitle(I)Lde/viktorreiser/toolbox/widget/TabManagerView$Tab;
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 968
    iget-object v0, p0, Lde/viktorreiser/toolbox/widget/TabManagerView$Tab;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lde/viktorreiser/toolbox/widget/TabManagerView$Tab;->title:Ljava/lang/String;

    .line 969
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lde/viktorreiser/toolbox/widget/TabManagerView$Tab;
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 980
    iput-object p1, p0, Lde/viktorreiser/toolbox/widget/TabManagerView$Tab;->title:Ljava/lang/String;

    .line 981
    return-object p0
.end method
