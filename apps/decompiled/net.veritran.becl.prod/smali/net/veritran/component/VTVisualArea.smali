.class public Lnet/veritran/component/VTVisualArea;
.super Lnet/veritran/component/VTUIComponentContainer;
.source "VTVisualArea.java"


# instance fields
.field private children:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lnet/veritran/component/VTUIComponent;",
            ">;"
        }
    .end annotation
.end field

.field private measuredHeight:I

.field private measuredWidth:I

.field private name:Ljava/lang/String;

.field private orientation:Ljava/lang/String;

.field private view:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Lnet/veritran/component/VTUIComponentContainer;-><init>()V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/veritran/component/VTVisualArea;->children:Ljava/util/ArrayList;

    return-void
.end method

.method private componentWillFinishAllChildren(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 103
    instance-of v4, p1, Landroid/view/ViewGroup;

    if-eqz v4, :cond_0

    move-object v3, p1

    .line 105
    check-cast v3, Landroid/view/ViewGroup;

    .line 107
    .local v3, "viewGroup":Landroid/view/ViewGroup;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-eq v1, v4, :cond_0

    .line 109
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 111
    .local v0, "child":Landroid/view/View;
    invoke-direct {p0, v0}, Lnet/veritran/component/VTVisualArea;->componentWillFinishAllChildren(Landroid/view/View;)V

    .line 107
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 115
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "i":I
    .end local v3    # "viewGroup":Landroid/view/ViewGroup;
    :cond_0
    invoke-static {p1}, Lnet/veritran/utils/VTAndroidUtils;->getUIComponentFromView(Landroid/view/View;)Lnet/veritran/component/VTUIComponent;

    move-result-object v2

    .line 117
    .local v2, "relatedComponent":Lnet/veritran/component/VTUIComponent;
    if-eqz v2, :cond_1

    .line 119
    invoke-virtual {v2}, Lnet/veritran/component/VTUIComponent;->componentWillFinish()V

    .line 121
    :cond_1
    return-void
.end method


# virtual methods
.method public addChild(Lnet/veritran/component/VTUIComponent;)V
    .locals 2
    .param p1, "child"    # Lnet/veritran/component/VTUIComponent;

    .prologue
    .line 145
    invoke-virtual {p1, p0}, Lnet/veritran/component/VTUIComponent;->setParent(Lnet/veritran/component/VTUIComponent;)V

    .line 146
    iget-object v0, p0, Lnet/veritran/component/VTVisualArea;->children:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    iget-object v0, p0, Lnet/veritran/component/VTVisualArea;->view:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Lnet/veritran/component/VTUIComponent;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 150
    return-void
.end method

.method public getChildAt(I)Lnet/veritran/component/VTUIComponent;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 98
    iget-object v0, p0, Lnet/veritran/component/VTVisualArea;->children:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/veritran/component/VTUIComponent;

    return-object v0
.end method

.method public getChildCount()I
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lnet/veritran/component/VTVisualArea;->children:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getMeasuredHeight()I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lnet/veritran/component/VTVisualArea;->measuredHeight:I

    return v0
.end method

.method public getMeasuredWidth()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lnet/veritran/component/VTVisualArea;->measuredWidth:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lnet/veritran/component/VTVisualArea;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOrientation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lnet/veritran/component/VTVisualArea;->orientation:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0}, Lnet/veritran/component/VTVisualArea;->getView()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getView()Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lnet/veritran/component/VTVisualArea;->view:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public init()V
    .locals 0

    .prologue
    .line 158
    invoke-super {p0}, Lnet/veritran/component/VTUIComponentContainer;->init()V

    .line 159
    return-void
.end method

.method public removeAllViews()V
    .locals 3

    .prologue
    .line 125
    iget-object v1, p0, Lnet/veritran/component/VTVisualArea;->children:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/veritran/component/VTUIComponent;

    .line 127
    .local v0, "component":Lnet/veritran/component/VTUIComponent;
    invoke-virtual {v0}, Lnet/veritran/component/VTUIComponent;->componentWillFinish()V

    .line 129
    check-cast v0, Lnet/veritran/component/VTVisualArea;

    .end local v0    # "component":Lnet/veritran/component/VTUIComponent;
    invoke-virtual {v0}, Lnet/veritran/component/VTVisualArea;->removeAllViews()V

    goto :goto_0

    .line 132
    :cond_0
    iget-object v1, p0, Lnet/veritran/component/VTVisualArea;->view:Landroid/widget/LinearLayout;

    invoke-direct {p0, v1}, Lnet/veritran/component/VTVisualArea;->componentWillFinishAllChildren(Landroid/view/View;)V

    .line 134
    iget-object v1, p0, Lnet/veritran/component/VTVisualArea;->view:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 135
    iget-object v1, p0, Lnet/veritran/component/VTVisualArea;->children:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 136
    return-void
.end method

.method public setMeasuredHeight(I)V
    .locals 0
    .param p1, "measuredHeight"    # I

    .prologue
    .line 53
    iput p1, p0, Lnet/veritran/component/VTVisualArea;->measuredHeight:I

    .line 54
    return-void
.end method

.method public setMeasuredWidth(I)V
    .locals 0
    .param p1, "measuredWidth"    # I

    .prologue
    .line 39
    iput p1, p0, Lnet/veritran/component/VTVisualArea;->measuredWidth:I

    .line 40
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 86
    iput-object p1, p0, Lnet/veritran/component/VTVisualArea;->name:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public setOrientation(Ljava/lang/String;)V
    .locals 0
    .param p1, "orientation"    # Ljava/lang/String;

    .prologue
    .line 81
    iput-object p1, p0, Lnet/veritran/component/VTVisualArea;->orientation:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public setView(Landroid/widget/LinearLayout;)V
    .locals 0
    .param p1, "view"    # Landroid/widget/LinearLayout;

    .prologue
    .line 67
    iput-object p1, p0, Lnet/veritran/component/VTVisualArea;->view:Landroid/widget/LinearLayout;

    .line 68
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 163
    iget-object v1, p0, Lnet/veritran/component/VTVisualArea;->view:Landroid/widget/LinearLayout;

    if-nez v1, :cond_0

    .line 164
    const-string v0, "null"

    .line 168
    .local v0, "sView":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VTVisualArea {"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnet/veritran/component/VTVisualArea;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "} [width="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lnet/veritran/component/VTVisualArea;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "height="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 169
    invoke-virtual {p0}, Lnet/veritran/component/VTVisualArea;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "orientation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 170
    invoke-virtual {p0}, Lnet/veritran/component/VTVisualArea;->getOrientation()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "parent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 171
    invoke-virtual {p0}, Lnet/veritran/component/VTVisualArea;->getParent()Lnet/veritran/component/VTUIComponent;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "children="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnet/veritran/component/VTVisualArea;->children:Ljava/util/ArrayList;

    .line 172
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "view="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 166
    .end local v0    # "sView":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lnet/veritran/component/VTVisualArea;->view:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .restart local v0    # "sView":Ljava/lang/String;
    goto/16 :goto_0
.end method
