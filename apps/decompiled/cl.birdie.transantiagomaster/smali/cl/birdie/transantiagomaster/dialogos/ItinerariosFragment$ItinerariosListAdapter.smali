.class final Lcl/birdie/transantiagomaster/dialogos/ItinerariosFragment$ItinerariosListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ItinerariosFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcl/birdie/transantiagomaster/dialogos/ItinerariosFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ItinerariosListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcl/birdie/transantiagomaster/newobjetos/Paradero;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcl/birdie/transantiagomaster/dialogos/ItinerariosFragment;


# direct methods
.method public constructor <init>(Lcl/birdie/transantiagomaster/dialogos/ItinerariosFragment;Landroid/content/Context;Ljava/util/List;)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 265
    .local p3, "objects":Ljava/util/List;, "Ljava/util/List<Lcl/birdie/transantiagomaster/newobjetos/Paradero;>;"
    iput-object p1, p0, Lcl/birdie/transantiagomaster/dialogos/ItinerariosFragment$ItinerariosListAdapter;->this$0:Lcl/birdie/transantiagomaster/dialogos/ItinerariosFragment;

    .line 266
    const v0, 0x7f03003c

    const v1, 0x7f0800c4

    invoke-direct {p0, p2, v0, v1, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    .line 267
    return-void
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v2, 0x0

    .line 271
    const/4 v0, 0x0

    .line 272
    .local v0, "holder":Lcl/birdie/transantiagomaster/dialogos/ItinerariosFragment$ViewHolder;
    invoke-virtual {p0, p1}, Lcl/birdie/transantiagomaster/dialogos/ItinerariosFragment$ItinerariosListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcl/birdie/transantiagomaster/newobjetos/Paradero;

    .line 279
    .local v1, "rowData":Lcl/birdie/transantiagomaster/newobjetos/Paradero;
    iget-object v3, p0, Lcl/birdie/transantiagomaster/dialogos/ItinerariosFragment$ItinerariosListAdapter;->this$0:Lcl/birdie/transantiagomaster/dialogos/ItinerariosFragment;

    iget-object v3, v3, Lcl/birdie/transantiagomaster/dialogos/ItinerariosFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    if-nez v3, :cond_0

    .line 299
    :goto_0
    return-object v2

    .line 283
    :cond_0
    if-nez p2, :cond_1

    .line 284
    iget-object v3, p0, Lcl/birdie/transantiagomaster/dialogos/ItinerariosFragment$ItinerariosListAdapter;->this$0:Lcl/birdie/transantiagomaster/dialogos/ItinerariosFragment;

    iget-object v3, v3, Lcl/birdie/transantiagomaster/dialogos/ItinerariosFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    invoke-interface {v3}, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;->onGetLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    .line 285
    const v4, 0x7f03003c

    invoke-virtual {v3, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 286
    new-instance v0, Lcl/birdie/transantiagomaster/dialogos/ItinerariosFragment$ViewHolder;

    .end local v0    # "holder":Lcl/birdie/transantiagomaster/dialogos/ItinerariosFragment$ViewHolder;
    iget-object v2, p0, Lcl/birdie/transantiagomaster/dialogos/ItinerariosFragment$ItinerariosListAdapter;->this$0:Lcl/birdie/transantiagomaster/dialogos/ItinerariosFragment;

    invoke-direct {v0, v2, p2}, Lcl/birdie/transantiagomaster/dialogos/ItinerariosFragment$ViewHolder;-><init>(Lcl/birdie/transantiagomaster/dialogos/ItinerariosFragment;Landroid/view/View;)V

    .line 287
    .restart local v0    # "holder":Lcl/birdie/transantiagomaster/dialogos/ItinerariosFragment$ViewHolder;
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 290
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "holder":Lcl/birdie/transantiagomaster/dialogos/ItinerariosFragment$ViewHolder;
    check-cast v0, Lcl/birdie/transantiagomaster/dialogos/ItinerariosFragment$ViewHolder;

    .line 291
    .restart local v0    # "holder":Lcl/birdie/transantiagomaster/dialogos/ItinerariosFragment$ViewHolder;
    invoke-virtual {v0}, Lcl/birdie/transantiagomaster/dialogos/ItinerariosFragment$ViewHolder;->getCodigo()Landroid/widget/TextView;

    move-result-object v2

    .line 292
    iget-object v3, v1, Lcl/birdie/transantiagomaster/newobjetos/Paradero;->codigo:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 293
    invoke-virtual {v0}, Lcl/birdie/transantiagomaster/dialogos/ItinerariosFragment$ViewHolder;->getTexto()Landroid/widget/TextView;

    move-result-object v2

    .line 294
    iget-object v3, v1, Lcl/birdie/transantiagomaster/newobjetos/Paradero;->texto:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v2, p2

    .line 299
    goto :goto_0
.end method
