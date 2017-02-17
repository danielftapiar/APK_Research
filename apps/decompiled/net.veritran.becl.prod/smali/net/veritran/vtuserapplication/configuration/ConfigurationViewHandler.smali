.class public Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;
.super Ljava/lang/Object;

# interfaces
.implements Lnet/veritran/vtuserapplication/utils/XMLSAXHandlerInterface;


# instance fields
.field private a:Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationView;

.field private i:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualAreaInstance;

.field private j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationView;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTMap;

.field private l:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTChart;

.field private m:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTSelector;

.field private n:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;

    invoke-direct {v0}, Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;-><init>()V

    iput-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->a:Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;

    iput-object v1, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->k:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTMap;

    iput-object v1, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->l:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTChart;

    iput-object v1, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->m:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTSelector;

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->a:Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;

    const-string v1, "views"

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;->insertParent(Ljava/lang/Object;)V

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->a:Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;

    const-string v1, "group"

    const-string v2, "views"

    invoke-virtual {v0, v1, v2}, Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;->addSonOf(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->a:Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;

    const-string v1, "view"

    const-string v2, "group"

    invoke-virtual {v0, v1, v2}, Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;->addSonOf(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->a:Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;

    const-string v1, "varea"

    const-string v2, "view"

    invoke-virtual {v0, v1, v2}, Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;->addSonOf(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->a:Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;

    const-string v1, "sequence"

    const-string v2, "varea"

    invoke-virtual {v0, v1, v2}, Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;->addSonOf(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->a:Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;

    const-string v1, "components"

    const-string v2, "sequence"

    invoke-virtual {v0, v1, v2}, Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;->addSonOf(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->a:Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;

    const-string v1, "VTInputComponent"

    const-string v2, "components"

    invoke-virtual {v0, v1, v2}, Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;->addSonOf(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->a:Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;

    const-string v1, "VTPasswordComponent"

    const-string v2, "components"

    invoke-virtual {v0, v1, v2}, Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;->addSonOf(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->a:Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;

    const-string v1, "VTHiddenComponent"

    const-string v2, "components"

    invoke-virtual {v0, v1, v2}, Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;->addSonOf(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->a:Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;

    const-string v1, "VTComboBox"

    const-string v2, "components"

    invoke-virtual {v0, v1, v2}, Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;->addSonOf(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->a:Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;

    const-string v1, "VTTextComponent"

    const-string v2, "components"

    invoke-virtual {v0, v1, v2}, Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;->addSonOf(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->a:Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;

    const-string v1, "VTImageComponent"

    const-string v2, "components"

    invoke-virtual {v0, v1, v2}, Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;->addSonOf(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->a:Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;

    const-string v1, "VTButtonComponent"

    const-string v2, "components"

    invoke-virtual {v0, v1, v2}, Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;->addSonOf(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->a:Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;

    const-string v1, "VTCheckboxComponent"

    const-string v2, "components"

    invoke-virtual {v0, v1, v2}, Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;->addSonOf(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->a:Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;

    const-string v1, "VTRadioComponent"

    const-string v2, "components"

    invoke-virtual {v0, v1, v2}, Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;->addSonOf(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->a:Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;

    const-string v1, "VTLineBreakComponent"

    const-string v2, "components"

    invoke-virtual {v0, v1, v2}, Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;->addSonOf(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->a:Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;

    const-string v1, "VTTextAreaComponent"

    const-string v2, "components"

    invoke-virtual {v0, v1, v2}, Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;->addSonOf(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->a:Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;

    const-string v1, "VTProgressBarComponent"

    const-string v2, "components"

    invoke-virtual {v0, v1, v2}, Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;->addSonOf(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->a:Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;

    const-string v1, "VTListComponent"

    const-string v2, "components"

    invoke-virtual {v0, v1, v2}, Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;->addSonOf(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->a:Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;

    const-string v1, "listItems"

    const-string v2, "VTListComponent"

    invoke-virtual {v0, v1, v2}, Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;->addSonOf(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->a:Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;

    const-string v1, "VTListItem"

    const-string v2, "listItems"

    invoke-virtual {v0, v1, v2}, Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;->addSonOf(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->a:Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;

    const-string v1, "itemselected"

    const-string v2, "VTListItem"

    invoke-virtual {v0, v1, v2}, Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;->addSonOf(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->a:Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;

    const-string v1, "VTStaticTableComponent"

    const-string v2, "components"

    invoke-virtual {v0, v1, v2}, Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;->addSonOf(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->a:Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;

    const-string v1, "cells"

    const-string v2, "VTStaticTableComponent"

    invoke-virtual {v0, v1, v2}, Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;->addSonOf(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->a:Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;

    const-string v1, "VTCell"

    const-string v2, "cells"

    invoke-virtual {v0, v1, v2}, Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;->addSonOf(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->a:Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;

    const-string v1, "VTStaticTableCell"

    const-string v2, "cells"

    invoke-virtual {v0, v1, v2}, Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;->addSonOf(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->a:Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;

    const-string v1, "components"

    const-string v2, "VTStaticTableComponent"

    invoke-virtual {v0, v1, v2}, Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;->addSonOf(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->a:Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;

    const-string v1, "VTDataGridComponent"

    const-string v2, "components"

    invoke-virtual {v0, v1, v2}, Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;->addSonOf(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->a:Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;

    const-string v1, "header"

    const-string v2, "VTDataGridComponent"

    invoke-virtual {v0, v1, v2}, Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;->addSonOf(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->a:Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;

    const-string v1, "cells"

    const-string v2, "header"

    invoke-virtual {v0, v1, v2}, Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;->addSonOf(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->a:Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;

    const-string v1, "cell"

    const-string v2, "cells"

    invoke-virtual {v0, v1, v2}, Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;->addSonOf(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->a:Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;

    const-string v1, "components"

    const-string v2, "header"

    invoke-virtual {v0, v1, v2}, Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;->addSonOf(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->a:Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;

    const-string v1, "rows"

    const-string v2, "VTDataGridComponent"

    invoke-virtual {v0, v1, v2}, Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;->addSonOf(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->a:Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;

    const-string v1, "VTDataGridRow"

    const-string v2, "rows"

    invoke-virtual {v0, v1, v2}, Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;->addSonOf(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->a:Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;

    const-string v1, "cells"

    const-string v2, "VTDataGridRow"

    invoke-virtual {v0, v1, v2}, Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;->addSonOf(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->a:Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;

    const-string v1, "components"

    const-string v2, "VTDataGridRow"

    invoke-virtual {v0, v1, v2}, Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;->addSonOf(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->a:Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;

    const-string v1, "components"

    const-string v2, "VTDataGridComponent"

    invoke-virtual {v0, v1, v2}, Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;->addSonOf(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->a:Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;

    const-string v1, "VTDataGridHeadComponent"

    const-string v2, "components"

    invoke-virtual {v0, v1, v2}, Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;->addSonOf(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->a:Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;

    const-string v1, "cells"

    const-string v2, "VTDataGridHeadComponent"

    invoke-virtual {v0, v1, v2}, Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;->addSonOf(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->a:Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;

    const-string v1, "VTDataGridHeadCell"

    const-string v2, "cells"

    invoke-virtual {v0, v1, v2}, Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;->addSonOf(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->a:Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;

    const-string v1, "components"

    const-string v2, "VTDataGridHeadComponent"

    invoke-virtual {v0, v1, v2}, Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;->addSonOf(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->a:Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;

    const-string v1, "VTDataGridRowComponent"

    const-string v2, "components"

    invoke-virtual {v0, v1, v2}, Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;->addSonOf(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->a:Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;

    const-string v1, "cells"

    const-string v2, "VTDataGridRowComponent"

    invoke-virtual {v0, v1, v2}, Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;->addSonOf(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->a:Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;

    const-string v1, "VTDataGridRowCell"

    const-string v2, "cells"

    invoke-virtual {v0, v1, v2}, Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;->addSonOf(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->a:Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;

    const-string v1, "components"

    const-string v2, "VTDataGridRowComponent"

    invoke-virtual {v0, v1, v2}, Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;->addSonOf(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->a:Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;

    const-string v1, "VTMapComponent"

    const-string v2, "components"

    invoke-virtual {v0, v1, v2}, Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;->addSonOf(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->a:Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;

    const-string v1, "VTLinkComponent"

    const-string v2, "components"

    invoke-virtual {v0, v1, v2}, Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;->addSonOf(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->a:Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;

    const-string v1, "components"

    const-string v2, "VTLinkComponent"

    invoke-virtual {v0, v1, v2}, Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;->addSonOf(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->a:Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;

    const-string v1, "VTPanelComponent"

    const-string v2, "components"

    invoke-virtual {v0, v1, v2}, Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;->addSonOf(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->a:Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;

    const-string v1, "components"

    const-string v2, "VTPanelComponent"

    invoke-virtual {v0, v1, v2}, Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;->addSonOf(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->a:Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;

    const-string v1, "VTLogicalContainerComponent"

    const-string v2, "components"

    invoke-virtual {v0, v1, v2}, Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;->addSonOf(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->a:Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;

    const-string v1, "components"

    const-string v2, "VTLogicalContainerComponent"

    invoke-virtual {v0, v1, v2}, Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;->addSonOf(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->a:Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;

    const-string v1, "VTFramedPanelComponent"

    const-string v2, "components"

    invoke-virtual {v0, v1, v2}, Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;->addSonOf(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->a:Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;

    const-string v1, "components"

    const-string v2, "VTFramedPanelComponent"

    invoke-virtual {v0, v1, v2}, Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;->addSonOf(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->a:Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;

    const-string v1, "VTPopupComponent"

    const-string v2, "components"

    invoke-virtual {v0, v1, v2}, Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;->addSonOf(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->a:Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;

    const-string v1, "components"

    const-string v2, "VTPopupComponent"

    invoke-virtual {v0, v1, v2}, Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;->addSonOf(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->a:Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;

    const-string v1, "VTMapComponent"

    const-string v2, "components"

    invoke-virtual {v0, v1, v2}, Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;->addSonOf(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->a:Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;

    const-string v1, "components"

    const-string v2, "VTMapComponent"

    invoke-virtual {v0, v1, v2}, Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;->addSonOf(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->a:Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;

    const-string v1, "VTMapMarkerComponent"

    const-string v2, "components"

    invoke-virtual {v0, v1, v2}, Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;->addSonOf(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->a:Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;

    const-string v1, "VTMapRouteComponent"

    const-string v2, "components"

    invoke-virtual {v0, v1, v2}, Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;->addSonOf(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->a:Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;

    const-string v1, "VTSlidePanelComponent"

    const-string v2, "components"

    invoke-virtual {v0, v1, v2}, Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;->addSonOf(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->a:Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;

    const-string v1, "components"

    const-string v2, "VTSlidePanelComponent"

    invoke-virtual {v0, v1, v2}, Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;->addSonOf(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->a:Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;

    const-string v1, "VTHTMLAreaComponent"

    const-string v2, "components"

    invoke-virtual {v0, v1, v2}, Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;->addSonOf(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->a:Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;

    const-string v1, "VTChartComponent"

    const-string v2, "components"

    invoke-virtual {v0, v1, v2}, Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;->addSonOf(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->a:Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;

    const-string v1, "components"

    const-string v2, "VTChartComponent"

    invoke-virtual {v0, v1, v2}, Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;->addSonOf(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->a:Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;

    const-string v1, "VTChartBarDataComponent"

    const-string v2, "components"

    invoke-virtual {v0, v1, v2}, Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;->addSonOf(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->a:Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;

    const-string v1, "VTChartLineDataComponent"

    const-string v2, "components"

    invoke-virtual {v0, v1, v2}, Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;->addSonOf(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->a:Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;

    const-string v1, "VTChartPieDataComponent"

    const-string v2, "components"

    invoke-virtual {v0, v1, v2}, Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;->addSonOf(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->a:Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;

    const-string v1, "VTSelectorComponent"

    const-string v2, "components"

    invoke-virtual {v0, v1, v2}, Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;->addSonOf(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->a:Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;

    const-string v1, "components"

    const-string v2, "VTSelectorComponent"

    invoke-virtual {v0, v1, v2}, Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;->addSonOf(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->a:Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;

    const-string v1, "VTItemSelectorComponent"

    const-string v2, "components"

    invoke-virtual {v0, v1, v2}, Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;->addSonOf(Ljava/lang/Object;Ljava/lang/Object;)Z

    iput-object p1, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->n:Ljava/lang/String;

    return-void
.end method

.method private static a(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationElement;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "-"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationElement;->putAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static a(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "-"

    const-string v1, ""

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "name"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p3}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->setComponentName(Ljava/lang/String;)V

    :goto_0
    const-string v0, "tag"

    invoke-virtual {p0, v0, p1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->putAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "-"

    const-string v1, ""

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p3}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;->putAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static a(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItem;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "-"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItem;->putAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 0

    return-void
.end method

.method public endDocument()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->b:Ljava/util/Stack;

    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->b:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->b:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->b:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "views"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Setup;->getApplicationSmartImplementation()Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;

    move-result-object v0

    iget-object v1, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->j:Ljava/util/ArrayList;

    iget-object v2, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->n:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;->serializeViews(Ljava/util/ArrayList;Ljava/lang/String;)Z

    iput-object v3, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->j:Ljava/util/ArrayList;

    :cond_2
    :goto_1
    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->b:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->b:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->b:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    goto :goto_0

    :cond_3
    const-string v0, "group"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iput-object v3, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->f:Ljava/lang/String;

    goto :goto_1

    :cond_4
    const-string v0, "view"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->h:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationView;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->j:Ljava/util/ArrayList;

    iget-object v1, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->h:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    iput-object v3, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->h:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationView;

    goto :goto_1

    :cond_6
    const-string v0, "layout"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "theme"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "varea"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->i:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualAreaInstance;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->h:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationView;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->h:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationView;

    iget-object v1, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->i:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualAreaInstance;

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationView;->addVisualArea(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualAreaInstance;)V

    :cond_7
    iput-object v3, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->i:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualAreaInstance;

    goto :goto_1

    :cond_8
    const-string v0, "VTPanelComponent"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "VTLogicalContainerComponent"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "VTFramedPanelComponent"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "VTPopupComponent"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "VTSlidePanelComponent"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "components"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->k:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTMap;

    if-nez v0, :cond_b

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->l:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTChart;

    if-nez v0, :cond_b

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->m:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTSelector;

    if-nez v0, :cond_b

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->c:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->c:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;

    iget-object v1, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->c:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->empty()Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->c:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;

    invoke-virtual {v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;->getComponentsSize()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;->getComponent(I)Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    move-result-object v2

    check-cast v2, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentContainer;

    invoke-virtual {v2, v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentContainer;->setConfigurationVisualComponentsList(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;)V

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->c:Ljava/util/Stack;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_9
    iget-object v1, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->c:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_a
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Error: closing component unopened"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    const-string v0, "VTImageComponent"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "VTButtonComponent"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "VTCheckboxComponent"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "VTTextComponent"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "VTLineBreakComponent"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "VTListComponent"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "listItems"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "VTListItem"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "VTStaticListComponent"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "cells"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "VTCell"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "VTStaticTableCell"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "VTDataGridHeadCell"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "VTDataGridRowCell"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "VTDataGridComponent"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "VTDataGridRow"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->c:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;->getComponentsSize()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;->getComponent(I)Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    move-result-object v0

    check-cast v0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTDataGridRow;

    iget-object v1, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->c:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;

    invoke-virtual {v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;->getComponentsSize()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;->getComponent(I)Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    move-result-object v2

    check-cast v2, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTDataGrid;

    invoke-virtual {v2, v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTDataGrid;->addRow(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTDataGridRow;)V

    invoke-virtual {v1, v2}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;->replaceLastComponent(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;)V

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->c:Ljava/util/Stack;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_c
    const-string v0, "VTDataGridRowComponent"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->c:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;->getComponentsSize()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;->getComponent(I)Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    move-result-object v1

    check-cast v1, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTDataGridRow;

    iget-object v2, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->c:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;

    invoke-virtual {v2}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;->getComponentsSize()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;->getComponent(I)Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    move-result-object v3

    check-cast v3, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTDataGrid;

    invoke-virtual {v3, v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTDataGrid;->addRow(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTDataGridRow;)V

    invoke-virtual {v2, v3}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;->replaceLastComponent(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;)V

    iget-object v1, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->c:Ljava/util/Stack;

    invoke-virtual {v1, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->c:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_d
    const-string v0, "header"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->c:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;->getComponentsSize()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;->getComponent(I)Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    move-result-object v0

    check-cast v0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTDataGridHeader;

    iget-object v1, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->c:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;

    invoke-virtual {v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;->getComponentsSize()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;->getComponent(I)Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    move-result-object v2

    check-cast v2, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTDataGrid;

    invoke-virtual {v2, v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTDataGrid;->setHeader(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTDataGridHeader;)V

    invoke-virtual {v1, v2}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;->replaceLastComponent(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;)V

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->c:Ljava/util/Stack;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_e
    const-string v0, "VTDataGridHeadComponent"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->c:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;->getComponentsSize()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;->getComponent(I)Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    move-result-object v0

    check-cast v0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTDataGridHeader;

    iget-object v1, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->c:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;

    invoke-virtual {v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;->getComponentsSize()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;->getComponent(I)Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    move-result-object v2

    check-cast v2, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTDataGrid;

    invoke-virtual {v2, v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTDataGrid;->setHeader(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTDataGridHeader;)V

    invoke-virtual {v1, v2}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;->replaceLastComponent(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;)V

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->c:Ljava/util/Stack;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;

    invoke-direct {v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;-><init>()V

    iget-object v1, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->c:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_f
    const-string v0, "sequence"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->c:Ljava/util/Stack;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->c:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->c:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Setup;->getApplicationSmartImplementation()Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;

    move-result-object v0

    iget-object v1, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->h:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationView;

    invoke-virtual {v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationView;->getViewid()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->i:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualAreaInstance;

    invoke-virtual {v2}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualAreaInstance;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->g:Ljava/lang/String;

    iget-object v5, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->n:Ljava/lang/String;

    invoke-interface/range {v0 .. v5}, Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;->serializeConfigurationVisualComponent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;Ljava/lang/String;)Z

    goto/16 :goto_1

    :cond_10
    const-string v0, "VTMapComponent"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    iput-object v3, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->k:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTMap;

    goto/16 :goto_1

    :cond_11
    const-string v0, "VTChartComponent"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    iput-object v3, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->l:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTChart;

    goto/16 :goto_1

    :cond_12
    const-string v0, "VTSelectorComponent"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-object v3, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->m:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTSelector;

    goto/16 :goto_1
.end method

.method public getResult()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationView;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->j:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Setup;->getApplicationSmartImplementation()Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;

    move-result-object v0

    iget-object v1, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->n:Ljava/lang/String;

    invoke-interface {v0, v1}, Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;->getSerializedViews(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->j:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->j:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getResult(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationView;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->getResult()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationView;

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationView;->getViewid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationView;->getGroup()Ljava/lang/String;

    move-result-object v4

    if-eqz p1, :cond_1

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_2
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method public setFilter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->d:Ljava/lang/String;

    iput-object p2, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->e:Ljava/lang/String;

    return-void
.end method

.method public startDocument()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->b:Ljava/util/Stack;

    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->b:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->a:Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;->getFirst()Lnet/veritran/vtuserapplication/utils/Link;

    move-result-object v0

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/utils/Link;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->b:Ljava/util/Stack;

    invoke-virtual {v0, p3}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    :cond_0
    const-string v0, "views"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->j:Ljava/util/ArrayList;

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->b:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "CONFIGURATIONVIEWHANDLER"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") Previous was empty. Force add a new empty tag"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->b:Ljava/util/Stack;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->a:Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;

    iget-object v1, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->b:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/utils/DoubleLinkedTree;->getLink(Ljava/lang/Object;)Lnet/veritran/vtuserapplication/utils/Link;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/utils/Link;->getSons()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_64

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/veritran/vtuserapplication/utils/Link;

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/utils/Link;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->b:Ljava/util/Stack;

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/utils/Link;->getData()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v4

    :goto_1
    if-nez v0, :cond_0

    const-string v0, "CONFIGURATIONVIEWHANDLER"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") not found. skipped..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->b:Ljava/util/Stack;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_5
    const-string v0, "group"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v2

    :goto_2
    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v1

    const-string v4, "groupid"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->e:Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    move-object v1, v3

    :cond_6
    iput-object v1, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->f:Ljava/lang/String;

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_8
    const-string v0, "view"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->f:Ljava/lang/String;

    if-eqz v0, :cond_1

    new-instance v0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationView;

    invoke-direct {v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationView;-><init>()V

    iput-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->h:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationView;

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->h:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationView;

    iget-object v1, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationView;->setGroup(Ljava/lang/String;)V

    move v0, v2

    move v1, v4

    :goto_3
    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v4

    if-ge v0, v4, :cond_e

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "id"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    iget-object v4, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->h:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationView;

    invoke-virtual {v4, v5}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationView;->setId(Ljava/lang/String;)V

    :cond_9
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_a
    const-string v6, "viewid"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c

    iget-object v4, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->d:Ljava/lang/String;

    if-eqz v4, :cond_b

    iget-object v4, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->d:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_b

    move v1, v2

    :cond_b
    iget-object v4, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->h:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationView;

    invoke-virtual {v4, v5}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationView;->setViewid(Ljava/lang/String;)V

    goto :goto_4

    :cond_c
    const-string v6, "layout"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_d

    iget-object v4, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->h:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationView;

    invoke-virtual {v4, v5}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationView;->setLayoutName(Ljava/lang/String;)V

    goto :goto_4

    :cond_d
    const-string v6, "theme"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    iget-object v4, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->h:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationView;

    invoke-virtual {v4, v5}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationView;->setThemeName(Ljava/lang/String;)V

    goto :goto_4

    :cond_e
    if-nez v1, :cond_1

    iput-object v3, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->h:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationView;

    goto/16 :goto_0

    :cond_f
    const-string v0, "varea"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    new-instance v0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualAreaInstance;

    invoke-direct {v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualAreaInstance;-><init>()V

    iput-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->i:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualAreaInstance;

    :goto_5
    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v0

    if-ge v2, v0, :cond_11

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "id"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_10

    const-string v3, "name"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->i:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualAreaInstance;

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualAreaInstance;->setName(Ljava/lang/String;)V

    :cond_10
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_11
    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->h:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationView;

    iget-object v1, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->i:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualAreaInstance;

    invoke-virtual {v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualAreaInstance;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationView;->getConfigurationVisualAreaInstance(Ljava/lang/String;)Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualAreaInstance;

    move-result-object v0

    if-eqz v0, :cond_1

    iput-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->i:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualAreaInstance;

    goto/16 :goto_0

    :cond_12
    const-string v0, "sequence"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    :goto_6
    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v0

    if-ge v2, v0, :cond_14

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "id"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_13

    const-string v3, "sequenceId"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    iput-object v1, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->g:Ljava/lang/String;

    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_14
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->c:Ljava/util/Stack;

    goto/16 :goto_0

    :cond_15
    const-string v0, "components"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->k:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTMap;

    if-nez v0, :cond_16

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->l:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTChart;

    if-nez v0, :cond_16

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->m:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTSelector;

    if-nez v0, :cond_16

    new-instance v0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;

    invoke-direct {v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;-><init>()V

    iget-object v1, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->c:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_16
    const-string v0, "VTInputComponent"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    new-instance v1, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTInput;

    invoke-direct {v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTInput;-><init>()V

    :goto_7
    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v0

    if-ge v2, v0, :cond_17

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, p3, v0, v3}, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->a(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_17
    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->c:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;->addComponent(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;)V

    iget-object v1, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->c:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_18
    const-string v0, "VTHTMLAreaComponent"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    new-instance v1, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTHTMLArea;

    invoke-direct {v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTHTMLArea;-><init>()V

    :goto_8
    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v0

    if-ge v2, v0, :cond_19

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, p3, v0, v3}, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->a(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_19
    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->c:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;->addComponent(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;)V

    iget-object v1, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->c:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_1a
    const-string v0, "VTChartComponent"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    new-instance v1, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTChart;

    invoke-direct {v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTChart;-><init>()V

    :goto_9
    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v0

    if-ge v2, v0, :cond_1b

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, p3, v0, v3}, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->a(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_1b
    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->c:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;->addComponent(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;)V

    iget-object v2, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->c:Ljava/util/Stack;

    invoke-virtual {v2, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v1, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->l:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTChart;

    goto/16 :goto_0

    :cond_1c
    const-string v0, "VTPasswordComponent"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    new-instance v1, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTPassword;

    invoke-direct {v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTPassword;-><init>()V

    :goto_a
    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v0

    if-ge v2, v0, :cond_1d

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, p3, v0, v3}, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->a(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_1d
    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->c:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;->addComponent(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;)V

    iget-object v1, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->c:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_1e
    const-string v0, "VTHiddenComponent"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    new-instance v1, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTHidden;

    invoke-direct {v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTHidden;-><init>()V

    :goto_b
    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v0

    if-ge v2, v0, :cond_1f

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, p3, v0, v3}, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->a(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_1f
    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->c:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;->addComponent(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;)V

    iget-object v1, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->c:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_20
    const-string v0, "VTTextAreaComponent"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    new-instance v1, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTTextArea;

    invoke-direct {v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTTextArea;-><init>()V

    :goto_c
    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v0

    if-ge v2, v0, :cond_21

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, p3, v0, v3}, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->a(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_21
    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->c:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;->addComponent(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;)V

    iget-object v1, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->c:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_22
    const-string v0, "VTComboBox"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    new-instance v1, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentComboBox;

    invoke-direct {v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentComboBox;-><init>()V

    :goto_d
    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v0

    if-ge v2, v0, :cond_24

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "id"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_23

    invoke-virtual {v1, v3}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentComboBox;->setId(Ljava/lang/String;)V

    :goto_e
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_23
    const-string v3, "XXXX"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    goto :goto_e

    :cond_24
    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->c:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;->addComponent(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;)V

    iget-object v1, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->c:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_25
    const-string v0, "VTTextComponent"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    new-instance v1, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTText;

    invoke-direct {v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTText;-><init>()V

    :goto_f
    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v0

    if-ge v2, v0, :cond_26

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, p3, v0, v3}, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->a(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_26
    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->c:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;->addComponent(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;)V

    iget-object v1, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->c:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_27
    const-string v0, "VTImageComponent"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    new-instance v1, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTImage;

    invoke-direct {v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTImage;-><init>()V

    :goto_10
    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v0

    if-ge v2, v0, :cond_28

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, p3, v0, v3}, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->a(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_28
    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->c:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;->addComponent(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;)V

    iget-object v1, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->c:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_29
    const-string v0, "VTButtonComponent"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b

    new-instance v1, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTButton;

    invoke-direct {v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTButton;-><init>()V

    :goto_11
    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v0

    if-ge v2, v0, :cond_2a

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, p3, v0, v3}, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->a(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_2a
    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->c:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;->addComponent(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;)V

    iget-object v1, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->c:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_2b
    const-string v0, "VTCheckboxComponent"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2d

    new-instance v1, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTCheckbox;

    invoke-direct {v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTCheckbox;-><init>()V

    :goto_12
    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v0

    if-ge v2, v0, :cond_2c

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, p3, v0, v3}, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->a(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    :cond_2c
    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->c:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;->addComponent(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;)V

    iget-object v1, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->c:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_2d
    const-string v0, "VTRadioComponent"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2f

    new-instance v1, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTRadioButton;

    invoke-direct {v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTRadioButton;-><init>()V

    :goto_13
    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v0

    if-ge v2, v0, :cond_2e

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, p3, v0, v3}, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->a(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    :cond_2e
    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->c:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;->addComponent(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;)V

    iget-object v1, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->c:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_2f
    const-string v0, "VTLineBreakComponent"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_31

    new-instance v1, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTLineBreak;

    invoke-direct {v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTLineBreak;-><init>()V

    :goto_14
    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v0

    if-ge v2, v0, :cond_30

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, p3, v0, v3}, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->a(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :cond_30
    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->c:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;->addComponent(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;)V

    iget-object v1, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->c:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_31
    const-string v0, "VTProgressBarComponent"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_33

    new-instance v1, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTProgressBar;

    invoke-direct {v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTProgressBar;-><init>()V

    :goto_15
    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v0

    if-ge v2, v0, :cond_32

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, p3, v0, v3}, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->a(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    :cond_32
    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->c:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;->addComponent(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;)V

    iget-object v1, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->c:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_33
    const-string v0, "VTLinkComponent"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_35

    new-instance v1, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTLink;

    invoke-direct {v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTLink;-><init>()V

    :goto_16
    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v0

    if-ge v2, v0, :cond_34

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, p3, v0, v3}, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->a(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    :cond_34
    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->c:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;->addComponent(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;)V

    iget-object v1, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->c:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_35
    const-string v0, "VTListComponent"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_37

    new-instance v1, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTList;

    invoke-direct {v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTList;-><init>()V

    :goto_17
    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v0

    if-ge v2, v0, :cond_36

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, p3, v0, v3}, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->a(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    :cond_36
    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->c:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;->addComponent(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;)V

    iget-object v1, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->c:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_37
    const-string v0, "listItems"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "VTListItem"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_39

    new-instance v3, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;

    invoke-direct {v3}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;-><init>()V

    :goto_18
    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v0

    if-ge v2, v0, :cond_38

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->a(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItem;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    :cond_38
    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->c:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;->getComponentsSize()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;->getComponent(I)Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    move-result-object v1

    check-cast v1, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTList;

    invoke-virtual {v1, v3}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTList;->addItem(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;)V

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;->replaceLastComponent(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;)V

    iget-object v1, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->c:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_39
    const-string v0, "itemselected"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3b

    new-instance v3, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTListSelected;

    invoke-direct {v3}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTListSelected;-><init>()V

    :goto_19
    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v0

    if-ge v2, v0, :cond_3a

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->a(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItem;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    :cond_3a
    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->c:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;->getComponentsSize()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;->getComponent(I)Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    move-result-object v1

    check-cast v1, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTList;

    invoke-virtual {v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTList;->getListItems()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTList;->getListItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;

    invoke-virtual {v1, v3}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTList;->setItemSelected(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTListSelected;)V

    iget-object v1, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->c:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_3b
    const-string v0, "VTPanelComponent"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3d

    new-instance v1, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTPanel;

    invoke-direct {v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTPanel;-><init>()V

    :goto_1a
    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v0

    if-ge v2, v0, :cond_3c

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, p3, v0, v3}, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->a(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    :cond_3c
    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->c:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;->addComponent(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;)V

    iget-object v1, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->c:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_3d
    const-string v0, "VTLogicalContainerComponent"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3f

    new-instance v1, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTLogicalContainer;

    invoke-direct {v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTLogicalContainer;-><init>()V

    :goto_1b
    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v0

    if-ge v2, v0, :cond_3e

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, p3, v0, v3}, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->a(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    :cond_3e
    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->c:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;->addComponent(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;)V

    iget-object v1, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->c:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_3f
    const-string v0, "VTSlidePanelComponent"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_41

    new-instance v1, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTSlidePanel;

    invoke-direct {v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTSlidePanel;-><init>()V

    :goto_1c
    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v0

    if-ge v2, v0, :cond_40

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, p3, v0, v3}, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->a(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    :cond_40
    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->c:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;->addComponent(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;)V

    iget-object v1, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->c:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_41
    const-string v0, "VTFramedPanelComponent"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_43

    new-instance v1, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTFramedPanel;

    invoke-direct {v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTFramedPanel;-><init>()V

    :goto_1d
    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v0

    if-ge v2, v0, :cond_42

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, p3, v0, v3}, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->a(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    :cond_42
    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->c:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;->addComponent(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;)V

    iget-object v1, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->c:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_43
    const-string v0, "VTPopupComponent"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_45

    new-instance v1, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTPopup;

    invoke-direct {v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTPopup;-><init>()V

    :goto_1e
    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v0

    if-ge v2, v0, :cond_44

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, p3, v0, v3}, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->a(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    :cond_44
    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->c:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;->addComponent(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;)V

    iget-object v1, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->c:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_45
    const-string v0, "VTStaticTableComponent"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_47

    new-instance v1, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTStaticTable;

    invoke-direct {v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTStaticTable;-><init>()V

    :goto_1f
    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v0

    if-ge v2, v0, :cond_46

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, p3, v0, v3}, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->a(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    :cond_46
    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->c:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;->addComponent(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;)V

    iget-object v1, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->c:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_47
    const-string v0, "cells"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "VTCell"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_48

    const-string v0, "VTStaticTableCell"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_48

    const-string v0, "VTDataGridHeadCell"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_48

    const-string v0, "VTDataGridRowCell"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4a

    :cond_48
    new-instance v3, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTCell;

    invoke-direct {v3}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTCell;-><init>()V

    :goto_20
    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v0

    if-ge v2, v0, :cond_49

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->a(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItem;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    :cond_49
    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->c:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;->getComponentsSize()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;->getComponent(I)Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    move-result-object v1

    check-cast v1, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualVTCellContainerInterface;

    invoke-interface {v1, v3}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualVTCellContainerInterface;->addCell(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualItemVTCell;)V

    check-cast v1, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;->replaceLastComponent(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;)V

    iget-object v1, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->c:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_4a
    const-string v0, "VTDataGridComponent"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4c

    new-instance v1, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTDataGrid;

    invoke-direct {v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTDataGrid;-><init>()V

    :goto_21
    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v0

    if-ge v2, v0, :cond_4b

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, p3, v0, v3}, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->a(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    :cond_4b
    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->c:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;->addComponent(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;)V

    iget-object v1, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->c:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_4c
    const-string v0, "header"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4e

    new-instance v0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTDataGridHeader;

    invoke-direct {v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTDataGridHeader;-><init>()V

    :goto_22
    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-ge v2, v1, :cond_4d

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, p3, v1, v3}, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->a(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    :cond_4d
    new-instance v1, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;

    invoke-direct {v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;-><init>()V

    invoke-virtual {v1, v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;->addComponent(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;)V

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->c:Ljava/util/Stack;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_4e
    const-string v0, "VTDataGridHeadComponent"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_50

    new-instance v1, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTDataGridHeader;

    invoke-direct {v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTDataGridHeader;-><init>()V

    :goto_23
    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v0

    if-ge v2, v0, :cond_4f

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, p3, v0, v3}, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->a(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_23

    :cond_4f
    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->c:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;->addComponent(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;)V

    iget-object v1, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->c:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_50
    const-string v0, "VTDataGridRow"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_52

    new-instance v0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTDataGridRow;

    invoke-direct {v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTDataGridRow;-><init>()V

    :goto_24
    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-ge v2, v1, :cond_51

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, p3, v1, v3}, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->a(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_24

    :cond_51
    new-instance v1, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;

    invoke-direct {v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;-><init>()V

    invoke-virtual {v1, v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;->addComponent(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;)V

    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->c:Ljava/util/Stack;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_52
    const-string v0, "VTDataGridRowComponent"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_54

    new-instance v1, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTDataGridRow;

    invoke-direct {v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTDataGridRow;-><init>()V

    :goto_25
    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v0

    if-ge v2, v0, :cond_53

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, p3, v0, v3}, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->a(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_25

    :cond_53
    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->c:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;->addComponent(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;)V

    iget-object v1, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->c:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_54
    const-string v0, "VTMapComponent"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_56

    new-instance v1, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTMap;

    invoke-direct {v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTMap;-><init>()V

    :goto_26
    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v0

    if-ge v2, v0, :cond_55

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, p3, v0, v3}, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->a(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_26

    :cond_55
    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->c:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;->addComponent(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;)V

    iget-object v2, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->c:Ljava/util/Stack;

    invoke-virtual {v2, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "CONFIGURATIONVIEWHANDLER"

    const-string v2, "Created VTMapComponent and assigned to currentMapComponent"

    invoke-static {v0, v2}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->k:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTMap;

    goto/16 :goto_0

    :cond_56
    const-string v0, "VTSelectorComponent"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_58

    new-instance v1, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTSelector;

    invoke-direct {v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTSelector;-><init>()V

    :goto_27
    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v0

    if-ge v2, v0, :cond_57

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, p3, v0, v3}, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->a(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_27

    :cond_57
    iget-object v0, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->c:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;

    invoke-virtual {v0, v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentsList;->addComponent(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponent;)V

    iget-object v2, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->c:Ljava/util/Stack;

    invoke-virtual {v2, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "CONFIGURATIONVIEWHANDLER"

    const-string v2, "Created VTSelector and assigned to currentSelectorComponent"

    invoke-static {v0, v2}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->m:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTSelector;

    goto/16 :goto_0

    :cond_58
    const-string v0, "routes"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "markers"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "VTMapMarkerComponent"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5a

    const-string v0, "CONFIGURATIONVIEWHANDLER"

    const-string v1, "Adding VTMapMarkerComponent"

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationElementVTMapMarker;

    invoke-direct {v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationElementVTMapMarker;-><init>()V

    :goto_28
    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-ge v2, v1, :cond_59

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->a(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationElement;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    :cond_59
    iget-object v1, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->k:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTMap;

    if-eqz v1, :cond_1

    const-string v1, "CONFIGURATIONVIEWHANDLER"

    const-string v2, "Adding VTMapMarkerComponent to the currentMapComponent"

    invoke-static {v1, v2}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->k:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTMap;

    invoke-virtual {v1, v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTMap;->addMarker(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationElementVTMapMarker;)V

    goto/16 :goto_0

    :cond_5a
    const-string v0, "VTMapRouteComponent"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5c

    const-string v0, "CONFIGURATIONVIEWHANDLER"

    const-string v1, "Adding VTMapRouteComponent"

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationElementVTMapRoute;

    invoke-direct {v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationElementVTMapRoute;-><init>()V

    :goto_29
    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-ge v2, v1, :cond_5b

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->a(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationElement;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_29

    :cond_5b
    iget-object v1, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->k:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTMap;

    if-eqz v1, :cond_1

    const-string v1, "CONFIGURATIONVIEWHANDLER"

    const-string v2, "Adding VTMapRouteComponent to the currentMapComponent"

    invoke-static {v1, v2}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->k:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTMap;

    invoke-virtual {v1, v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTMap;->addRoute(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationElementVTMapRoute;)V

    goto/16 :goto_0

    :cond_5c
    const-string v0, "VTItemSelectorComponent"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5e

    const-string v0, "CONFIGURATIONVIEWHANDLER"

    const-string v1, "Adding VTItemSelectorComponent"

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationElementVTItemSelector;

    invoke-direct {v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationElementVTItemSelector;-><init>()V

    :goto_2a
    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-ge v2, v1, :cond_5d

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->a(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationElement;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2a

    :cond_5d
    iget-object v1, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->m:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTSelector;

    if-eqz v1, :cond_1

    const-string v1, "CONFIGURATIONVIEWHANDLER"

    const-string v2, "Adding VTMapMarkerComponent to the VTItemSelectorComponent"

    invoke-static {v1, v2}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->m:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTSelector;

    invoke-virtual {v1, v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTSelector;->addItem(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationElementVTItemSelector;)V

    goto/16 :goto_0

    :cond_5e
    const-string v0, "VTChartBarDataComponent"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_60

    const-string v0, "CONFIGURATIONVIEWHANDLER"

    const-string v1, "Adding VTChartBarDataComponent"

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationElementVTChartBarData;

    invoke-direct {v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationElementVTChartBarData;-><init>()V

    :goto_2b
    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-ge v2, v1, :cond_5f

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->a(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationElement;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2b

    :cond_5f
    iget-object v1, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->l:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTChart;

    if-eqz v1, :cond_1

    const-string v1, "CONFIGURATIONVIEWHANDLER"

    const-string v2, "Adding VTChartBarDataComponent to the currentChartComponent"

    invoke-static {v1, v2}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->l:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTChart;

    invoke-virtual {v1, v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTChart;->addChartBarData(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationElementVTChartBarData;)V

    goto/16 :goto_0

    :cond_60
    const-string v0, "VTChartLineDataComponent"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_62

    const-string v0, "CONFIGURATIONVIEWHANDLER"

    const-string v1, "Adding VTChartLineDataComponent"

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationElementVTChartLineData;

    invoke-direct {v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationElementVTChartLineData;-><init>()V

    :goto_2c
    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-ge v2, v1, :cond_61

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->a(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationElement;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2c

    :cond_61
    iget-object v1, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->l:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTChart;

    if-eqz v1, :cond_1

    const-string v1, "CONFIGURATIONVIEWHANDLER"

    const-string v2, "Adding VTChartLineDataComponent to the currentChartComponent"

    invoke-static {v1, v2}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->l:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTChart;

    invoke-virtual {v1, v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTChart;->addChartLineData(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationElementVTChartLineData;)V

    goto/16 :goto_0

    :cond_62
    const-string v0, "VTChartPieDataComponent"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "CONFIGURATIONVIEWHANDLER"

    const-string v1, "Adding VTChartPieDataComponent"

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationElementVTChartPieData;

    invoke-direct {v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationElementVTChartPieData;-><init>()V

    :goto_2d
    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    if-ge v2, v1, :cond_63

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->a(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationElement;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2d

    :cond_63
    iget-object v1, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->l:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTChart;

    if-eqz v1, :cond_1

    const-string v1, "CONFIGURATIONVIEWHANDLER"

    const-string v2, "Adding VTChartPieDataComponent to the currentChartComponent"

    invoke-static {v1, v2}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lnet/veritran/vtuserapplication/configuration/ConfigurationViewHandler;->l:Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTChart;

    invoke-virtual {v1, v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualComponentVTChart;->addChartPieData(Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationElementVTChartPieData;)V

    goto/16 :goto_0

    :cond_64
    move v0, v2

    goto/16 :goto_1
.end method
