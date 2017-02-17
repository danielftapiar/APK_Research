.class public Lnet/veritran/VTSpinnerAdapter;
.super Landroid/widget/ArrayAdapter;
.source "VTSpinnerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;",
        ">;"
    }
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private color:Ljava/lang/String;

.field private component:Lnet/veritran/component/VTUIComponent;

.field private final context:Landroid/content/Context;

.field private fontFamily:Ljava/lang/String;

.field private fontSize:Ljava/lang/String;

.field private fontStyle:Ljava/lang/String;

.field private fontWeight:Ljava/lang/String;

.field private final values:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 26
    .local p2, "values":Ljava/util/List;, "Ljava/util/List<Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;>;"
    const v0, 0x1090008

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 23
    const-string v0, "VTSpinnerAdapter"

    iput-object v0, p0, Lnet/veritran/VTSpinnerAdapter;->TAG:Ljava/lang/String;

    .line 27
    iput-object p1, p0, Lnet/veritran/VTSpinnerAdapter;->context:Landroid/content/Context;

    .line 28
    iput-object p2, p0, Lnet/veritran/VTSpinnerAdapter;->values:Ljava/util/List;

    .line 29
    const v0, 0x1090009

    invoke-virtual {p0, v0}, Lnet/veritran/VTSpinnerAdapter;->setDropDownViewResource(I)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lnet/veritran/component/VTUIComponent;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "fontSize"    # Ljava/lang/String;
    .param p4, "fontFamily"    # Ljava/lang/String;
    .param p5, "fontStyle"    # Ljava/lang/String;
    .param p6, "fontWeight"    # Ljava/lang/String;
    .param p7, "color"    # Ljava/lang/String;
    .param p8, "component"    # Lnet/veritran/component/VTUIComponent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lnet/veritran/component/VTUIComponent;",
            ")V"
        }
    .end annotation

    .prologue
    .line 35
    .local p2, "values":Ljava/util/List;, "Ljava/util/List<Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;>;"
    invoke-direct {p0, p1, p2}, Lnet/veritran/VTSpinnerAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 36
    iput-object p3, p0, Lnet/veritran/VTSpinnerAdapter;->fontSize:Ljava/lang/String;

    .line 37
    iput-object p4, p0, Lnet/veritran/VTSpinnerAdapter;->fontFamily:Ljava/lang/String;

    .line 38
    iput-object p5, p0, Lnet/veritran/VTSpinnerAdapter;->fontStyle:Ljava/lang/String;

    .line 39
    iput-object p6, p0, Lnet/veritran/VTSpinnerAdapter;->fontWeight:Ljava/lang/String;

    .line 40
    iput-object p7, p0, Lnet/veritran/VTSpinnerAdapter;->color:Ljava/lang/String;

    .line 41
    iput-object p8, p0, Lnet/veritran/VTSpinnerAdapter;->component:Lnet/veritran/component/VTUIComponent;

    .line 42
    return-void
.end method


# virtual methods
.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 59
    iget-object v1, p0, Lnet/veritran/VTSpinnerAdapter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDropDownView("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 61
    .local v0, "v":Landroid/widget/TextView;
    iget-object v1, p0, Lnet/veritran/VTSpinnerAdapter;->values:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;

    const-string v2, "text"

    invoke-virtual {v1, v2}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 45
    iget-object v1, p0, Lnet/veritran/VTSpinnerAdapter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getView("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 47
    .local v0, "v":Landroid/widget/TextView;
    iget-object v1, p0, Lnet/veritran/VTSpinnerAdapter;->values:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;

    const-string v2, "text"

    invoke-virtual {v1, v2}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    iget-object v1, p0, Lnet/veritran/VTSpinnerAdapter;->component:Lnet/veritran/component/VTUIComponent;

    if-eqz v1, :cond_0

    .line 50
    iget-object v1, p0, Lnet/veritran/VTSpinnerAdapter;->color:Ljava/lang/String;

    invoke-static {v0, v1}, Lnet/veritran/utils/VTFontHelper;->setTextColor(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 51
    iget-object v1, p0, Lnet/veritran/VTSpinnerAdapter;->component:Lnet/veritran/component/VTUIComponent;

    invoke-virtual {v1}, Lnet/veritran/component/VTUIComponent;->getActivity()Lnet/veritran/VTCommonActivity;

    move-result-object v1

    iget-object v2, p0, Lnet/veritran/VTSpinnerAdapter;->fontSize:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lnet/veritran/VTCommonActivity;->setTextSize(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 52
    iget-object v1, p0, Lnet/veritran/VTSpinnerAdapter;->fontFamily:Ljava/lang/String;

    iget-object v2, p0, Lnet/veritran/VTSpinnerAdapter;->fontStyle:Ljava/lang/String;

    iget-object v3, p0, Lnet/veritran/VTSpinnerAdapter;->fontWeight:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lnet/veritran/utils/VTFontHelper;->setTextFamily(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    :cond_0
    return-object v0
.end method
