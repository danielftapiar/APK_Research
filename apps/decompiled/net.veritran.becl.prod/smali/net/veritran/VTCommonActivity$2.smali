.class Lnet/veritran/VTCommonActivity$2;
.super Landroid/widget/ArrayAdapter;
.source "VTCommonActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/veritran/VTCommonActivity;->initConfigContentView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lnet/veritran/VTCommonActivity$Info;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lnet/veritran/VTCommonActivity;

.field final synthetic val$InfoList:Ljava/util/List;


# direct methods
.method constructor <init>(Lnet/veritran/VTCommonActivity;Landroid/content/Context;IILjava/util/List;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lnet/veritran/VTCommonActivity;
    .param p2, "x0"    # Landroid/content/Context;
    .param p3, "x1"    # I
    .param p4, "x2"    # I

    .prologue
    .line 583
    .local p5, "x3":Ljava/util/List;, "Ljava/util/List<Lnet/veritran/VTCommonActivity$Info;>;"
    iput-object p1, p0, Lnet/veritran/VTCommonActivity$2;->this$0:Lnet/veritran/VTCommonActivity;

    iput-object p6, p0, Lnet/veritran/VTCommonActivity$2;->val$InfoList:Ljava/util/List;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 586
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 587
    .local v2, "view":Landroid/view/View;
    const v3, 0x1020014

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 588
    .local v0, "text1":Landroid/widget/TextView;
    const v3, 0x1020015

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 590
    .local v1, "text2":Landroid/widget/TextView;
    iget-object v3, p0, Lnet/veritran/VTCommonActivity$2;->val$InfoList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/veritran/VTCommonActivity$Info;

    invoke-virtual {v3}, Lnet/veritran/VTCommonActivity$Info;->getTittle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 591
    iget-object v3, p0, Lnet/veritran/VTCommonActivity$2;->val$InfoList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/veritran/VTCommonActivity$Info;

    invoke-virtual {v3}, Lnet/veritran/VTCommonActivity$Info;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 592
    return-object v2
.end method
