.class Lcom/mwr/dz/views/ServerListRowView$1;
.super Ljava/lang/Object;
.source "ServerListRowView.java"

# interfaces
.implements Lcom/mwr/jdiesel/api/connectors/Server$OnChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mwr/dz/views/ServerListRowView;->setServerParameters(Lcom/mwr/jdiesel/api/connectors/Server;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mwr/dz/views/ServerListRowView;


# direct methods
.method constructor <init>(Lcom/mwr/dz/views/ServerListRowView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mwr/dz/views/ServerListRowView$1;->this$0:Lcom/mwr/dz/views/ServerListRowView;

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Lcom/mwr/jdiesel/api/connectors/Server;)V
    .locals 1
    .param p1, "parameters"    # Lcom/mwr/jdiesel/api/connectors/Server;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/mwr/dz/views/ServerListRowView$1;->this$0:Lcom/mwr/dz/views/ServerListRowView;

    invoke-virtual {v0, p1}, Lcom/mwr/dz/views/ServerListRowView;->setServerParameters(Lcom/mwr/jdiesel/api/connectors/Server;)V

    .line 80
    return-void
.end method
