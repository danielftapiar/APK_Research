.class Lcom/vrem/wifianalyzer/c/d;
.super Landroid/widget/BaseExpandableListAdapter;

# interfaces
.implements Lcom/vrem/wifianalyzer/c/d/f;


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Lcom/vrem/wifianalyzer/c/e;

.field private c:Lcom/vrem/wifianalyzer/c/a;

.field private d:Lcom/vrem/wifianalyzer/c/b;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    iput-object p1, p0, Lcom/vrem/wifianalyzer/c/d;->a:Landroid/content/Context;

    new-instance v0, Lcom/vrem/wifianalyzer/c/e;

    invoke-direct {v0}, Lcom/vrem/wifianalyzer/c/e;-><init>()V

    invoke-virtual {p0, v0}, Lcom/vrem/wifianalyzer/c/d;->a(Lcom/vrem/wifianalyzer/c/e;)V

    new-instance v0, Lcom/vrem/wifianalyzer/c/a;

    invoke-direct {v0}, Lcom/vrem/wifianalyzer/c/a;-><init>()V

    invoke-virtual {p0, v0}, Lcom/vrem/wifianalyzer/c/d;->a(Lcom/vrem/wifianalyzer/c/a;)V

    new-instance v0, Lcom/vrem/wifianalyzer/c/b;

    invoke-direct {v0}, Lcom/vrem/wifianalyzer/c/b;-><init>()V

    invoke-virtual {p0, v0}, Lcom/vrem/wifianalyzer/c/d;->a(Lcom/vrem/wifianalyzer/c/b;)V

    return-void
.end method

.method private a(Landroid/view/View;Lcom/vrem/wifianalyzer/c/c/j;)V
    .locals 2

    const v0, 0x7f0f007a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/vrem/wifianalyzer/c/d;->d:Lcom/vrem/wifianalyzer/c/b;

    invoke-virtual {v1, v0, p2}, Lcom/vrem/wifianalyzer/c/b;->a(Landroid/view/View;Lcom/vrem/wifianalyzer/c/c/j;)V

    iget-object v0, p0, Lcom/vrem/wifianalyzer/c/d;->d:Lcom/vrem/wifianalyzer/c/b;

    const v1, 0x7f0f0079

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/vrem/wifianalyzer/c/b;->a(Landroid/view/View;Lcom/vrem/wifianalyzer/c/c/j;)V

    :cond_0
    return-void
.end method


# virtual methods
.method a(Lcom/vrem/wifianalyzer/c/a;)V
    .locals 0

    iput-object p1, p0, Lcom/vrem/wifianalyzer/c/d;->c:Lcom/vrem/wifianalyzer/c/a;

    return-void
.end method

.method a(Lcom/vrem/wifianalyzer/c/b;)V
    .locals 0

    iput-object p1, p0, Lcom/vrem/wifianalyzer/c/d;->d:Lcom/vrem/wifianalyzer/c/b;

    return-void
.end method

.method public a(Lcom/vrem/wifianalyzer/c/c/i;)V
    .locals 1

    iget-object v0, p0, Lcom/vrem/wifianalyzer/c/d;->b:Lcom/vrem/wifianalyzer/c/e;

    invoke-virtual {v0, p1}, Lcom/vrem/wifianalyzer/c/e;->a(Lcom/vrem/wifianalyzer/c/c/i;)V

    invoke-virtual {p0}, Lcom/vrem/wifianalyzer/c/d;->notifyDataSetChanged()V

    return-void
.end method

.method a(Lcom/vrem/wifianalyzer/c/e;)V
    .locals 0

    iput-object p1, p0, Lcom/vrem/wifianalyzer/c/d;->b:Lcom/vrem/wifianalyzer/c/e;

    return-void
.end method

.method public getChild(II)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/vrem/wifianalyzer/c/d;->b:Lcom/vrem/wifianalyzer/c/e;

    invoke-virtual {v0, p1, p2}, Lcom/vrem/wifianalyzer/c/e;->a(II)Lcom/vrem/wifianalyzer/c/c/j;

    move-result-object v0

    return-object v0
.end method

.method public getChildId(II)J
    .locals 2

    int-to-long v0, p2

    return-wide v0
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    invoke-virtual {p0, p1, p2}, Lcom/vrem/wifianalyzer/c/d;->getChild(II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vrem/wifianalyzer/c/c/j;

    iget-object v1, p0, Lcom/vrem/wifianalyzer/c/d;->c:Lcom/vrem/wifianalyzer/c/a;

    const/4 v2, 0x1

    invoke-virtual {v1, p4, p5, v0, v2}, Lcom/vrem/wifianalyzer/c/a;->a(Landroid/view/View;Landroid/view/ViewGroup;Lcom/vrem/wifianalyzer/c/c/j;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/vrem/wifianalyzer/c/d;->a(Landroid/view/View;Lcom/vrem/wifianalyzer/c/c/j;)V

    const v0, 0x7f0f0078

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    return-object v1
.end method

.method public getChildrenCount(I)I
    .locals 1

    iget-object v0, p0, Lcom/vrem/wifianalyzer/c/d;->b:Lcom/vrem/wifianalyzer/c/e;

    invoke-virtual {v0, p1}, Lcom/vrem/wifianalyzer/c/e;->b(I)I

    move-result v0

    return v0
.end method

.method public getGroup(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/vrem/wifianalyzer/c/d;->b:Lcom/vrem/wifianalyzer/c/e;

    invoke-virtual {v0, p1}, Lcom/vrem/wifianalyzer/c/e;->a(I)Lcom/vrem/wifianalyzer/c/c/j;

    move-result-object v0

    return-object v0
.end method

.method public getGroupCount()I
    .locals 1

    iget-object v0, p0, Lcom/vrem/wifianalyzer/c/d;->b:Lcom/vrem/wifianalyzer/c/e;

    invoke-virtual {v0}, Lcom/vrem/wifianalyzer/c/e;->a()I

    move-result v0

    return v0
.end method

.method public getGroupId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0, p1}, Lcom/vrem/wifianalyzer/c/d;->getGroup(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vrem/wifianalyzer/c/c/j;

    iget-object v1, p0, Lcom/vrem/wifianalyzer/c/d;->c:Lcom/vrem/wifianalyzer/c/a;

    invoke-virtual {v1, p3, p4, v0, v3}, Lcom/vrem/wifianalyzer/c/a;->a(Landroid/view/View;Landroid/view/ViewGroup;Lcom/vrem/wifianalyzer/c/c/j;Z)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2, v0}, Lcom/vrem/wifianalyzer/c/d;->a(Landroid/view/View;Lcom/vrem/wifianalyzer/c/c/j;)V

    const v0, 0x7f0f0078

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Lcom/vrem/wifianalyzer/c/d;->getChildrenCount(I)I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    if-eqz p2, :cond_0

    const v1, 0x7f02005b

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/vrem/wifianalyzer/c/d;->a:Landroid/content/Context;

    const v3, 0x7f0e002c

    invoke-static {v1, v3}, Landroid/support/v4/c/a;->c(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    :goto_1
    return-object v2

    :cond_0
    const v1, 0x7f02005c

    goto :goto_0

    :cond_1
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method public hasStableIds()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isChildSelectable(II)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
