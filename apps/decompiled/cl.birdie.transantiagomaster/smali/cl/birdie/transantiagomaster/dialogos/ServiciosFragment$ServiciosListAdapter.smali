.class final Lcl/birdie/transantiagomaster/dialogos/ServiciosFragment$ServiciosListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ServiciosFragment.java"

# interfaces
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcl/birdie/transantiagomaster/dialogos/ServiciosFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServiciosListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcl/birdie/transantiagomaster/dialogos/ServiciosFragment$ServiciosListAdapter$ItemsFilter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcl/birdie/transantiagomaster/newobjetos/Servicio;",
        ">;",
        "Landroid/widget/Filterable;"
    }
.end annotation


# instance fields
.field filtrados:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcl/birdie/transantiagomaster/newobjetos/Servicio;",
            ">;"
        }
    .end annotation
.end field

.field private mFilter:Landroid/widget/Filter;

.field originales:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcl/birdie/transantiagomaster/newobjetos/Servicio;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcl/birdie/transantiagomaster/dialogos/ServiciosFragment;


# direct methods
.method public constructor <init>(Lcl/birdie/transantiagomaster/dialogos/ServiciosFragment;Landroid/content/Context;[Lcl/birdie/transantiagomaster/newobjetos/Servicio;)V
    .locals 4
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "objects"    # [Lcl/birdie/transantiagomaster/newobjetos/Servicio;

    .prologue
    .line 114
    iput-object p1, p0, Lcl/birdie/transantiagomaster/dialogos/ServiciosFragment$ServiciosListAdapter;->this$0:Lcl/birdie/transantiagomaster/dialogos/ServiciosFragment;

    .line 115
    const v1, 0x7f03005b

    const v2, 0x7f08012e

    invoke-direct {p0, p2, v1, v2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    .line 116
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcl/birdie/transantiagomaster/dialogos/ServiciosFragment$ServiciosListAdapter;->originales:Ljava/util/List;

    .line 117
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcl/birdie/transantiagomaster/dialogos/ServiciosFragment$ServiciosListAdapter;->filtrados:Ljava/util/List;

    .line 118
    if-eqz p3, :cond_0

    .line 119
    array-length v2, p3

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v2, :cond_1

    .line 123
    :cond_0
    return-void

    .line 119
    :cond_1
    aget-object v0, p3, v1

    .line 120
    .local v0, "o":Lcl/birdie/transantiagomaster/newobjetos/Servicio;
    iget-object v3, p0, Lcl/birdie/transantiagomaster/dialogos/ServiciosFragment$ServiciosListAdapter;->originales:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    iget-object v3, p0, Lcl/birdie/transantiagomaster/dialogos/ServiciosFragment$ServiciosListAdapter;->filtrados:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method static synthetic access$1(Lcl/birdie/transantiagomaster/dialogos/ServiciosFragment$ServiciosListAdapter;)Lcl/birdie/transantiagomaster/dialogos/ServiciosFragment;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/ServiciosFragment$ServiciosListAdapter;->this$0:Lcl/birdie/transantiagomaster/dialogos/ServiciosFragment;

    return-object v0
.end method

.method private getItem(I)Lcl/birdie/transantiagomaster/newobjetos/Servicio;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 136
    iget-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/ServiciosFragment$ServiciosListAdapter;->filtrados:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcl/birdie/transantiagomaster/newobjetos/Servicio;

    return-object v0
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/ServiciosFragment$ServiciosListAdapter;->filtrados:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getFilter()Landroid/widget/Filter;
    .locals 2

    .prologue
    .line 170
    iget-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/ServiciosFragment$ServiciosListAdapter;->mFilter:Landroid/widget/Filter;

    if-nez v0, :cond_0

    .line 171
    new-instance v0, Lcl/birdie/transantiagomaster/dialogos/ServiciosFragment$ServiciosListAdapter$ItemsFilter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcl/birdie/transantiagomaster/dialogos/ServiciosFragment$ServiciosListAdapter$ItemsFilter;-><init>(Lcl/birdie/transantiagomaster/dialogos/ServiciosFragment$ServiciosListAdapter;B)V

    iput-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/ServiciosFragment$ServiciosListAdapter;->mFilter:Landroid/widget/Filter;

    .line 173
    :cond_0
    iget-object v0, p0, Lcl/birdie/transantiagomaster/dialogos/ServiciosFragment$ServiciosListAdapter;->mFilter:Landroid/widget/Filter;

    return-object v0
.end method

.method public final bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0, p1}, Lcl/birdie/transantiagomaster/dialogos/ServiciosFragment$ServiciosListAdapter;->getItem(I)Lcl/birdie/transantiagomaster/newobjetos/Servicio;

    move-result-object v0

    return-object v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v2, 0x0

    .line 141
    const/4 v0, 0x0

    .line 142
    .local v0, "holder":Lcl/birdie/transantiagomaster/dialogos/ServiciosFragment$ViewHolder;
    invoke-direct {p0, p1}, Lcl/birdie/transantiagomaster/dialogos/ServiciosFragment$ServiciosListAdapter;->getItem(I)Lcl/birdie/transantiagomaster/newobjetos/Servicio;

    move-result-object v1

    .line 149
    .local v1, "rowData":Lcl/birdie/transantiagomaster/newobjetos/Servicio;
    if-nez p2, :cond_1

    .line 150
    iget-object v3, p0, Lcl/birdie/transantiagomaster/dialogos/ServiciosFragment$ServiciosListAdapter;->this$0:Lcl/birdie/transantiagomaster/dialogos/ServiciosFragment;

    iget-object v3, v3, Lcl/birdie/transantiagomaster/dialogos/ServiciosFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    if-nez v3, :cond_0

    .line 166
    :goto_0
    return-object v2

    .line 153
    :cond_0
    iget-object v3, p0, Lcl/birdie/transantiagomaster/dialogos/ServiciosFragment$ServiciosListAdapter;->this$0:Lcl/birdie/transantiagomaster/dialogos/ServiciosFragment;

    iget-object v3, v3, Lcl/birdie/transantiagomaster/dialogos/ServiciosFragment;->mListener:Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;

    invoke-interface {v3}, Lcl/birdie/transantiagomaster/facebook/TSMCommandListener;->onGetLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    .line 155
    const v4, 0x7f03005b

    invoke-virtual {v3, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 156
    new-instance v0, Lcl/birdie/transantiagomaster/dialogos/ServiciosFragment$ViewHolder;

    .end local v0    # "holder":Lcl/birdie/transantiagomaster/dialogos/ServiciosFragment$ViewHolder;
    iget-object v2, p0, Lcl/birdie/transantiagomaster/dialogos/ServiciosFragment$ServiciosListAdapter;->this$0:Lcl/birdie/transantiagomaster/dialogos/ServiciosFragment;

    invoke-direct {v0, v2, p2}, Lcl/birdie/transantiagomaster/dialogos/ServiciosFragment$ViewHolder;-><init>(Lcl/birdie/transantiagomaster/dialogos/ServiciosFragment;Landroid/view/View;)V

    .line 157
    .restart local v0    # "holder":Lcl/birdie/transantiagomaster/dialogos/ServiciosFragment$ViewHolder;
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 160
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "holder":Lcl/birdie/transantiagomaster/dialogos/ServiciosFragment$ViewHolder;
    check-cast v0, Lcl/birdie/transantiagomaster/dialogos/ServiciosFragment$ViewHolder;

    .line 161
    .restart local v0    # "holder":Lcl/birdie/transantiagomaster/dialogos/ServiciosFragment$ViewHolder;
    invoke-virtual {v0}, Lcl/birdie/transantiagomaster/dialogos/ServiciosFragment$ViewHolder;->getServicio()Landroid/widget/TextView;

    move-result-object v2

    .line 162
    iget-object v3, v1, Lcl/birdie/transantiagomaster/newobjetos/Servicio;->nombre:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    invoke-virtual {v0}, Lcl/birdie/transantiagomaster/dialogos/ServiciosFragment$ViewHolder;->getRecorrido()Landroid/widget/TextView;

    move-result-object v2

    .line 164
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcl/birdie/transantiagomaster/newobjetos/Servicio;->textoIda:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcl/birdie/transantiagomaster/newobjetos/Servicio;->textoRegreso:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v2, p2

    .line 166
    goto :goto_0
.end method

.method public final notifyDataSetChanged()V
    .locals 0

    .prologue
    .line 178
    invoke-super {p0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 179
    return-void
.end method
