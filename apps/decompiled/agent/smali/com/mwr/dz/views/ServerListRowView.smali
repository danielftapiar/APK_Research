.class public Lcom/mwr/dz/views/ServerListRowView;
.super Landroid/widget/LinearLayout;
.source "ServerListRowView.java"

# interfaces
.implements Ljava/util/Observer;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mwr/dz/views/ServerListRowView$OnServerViewListener;
    }
.end annotation


# instance fields
.field private adb_server_port_field:Landroid/widget/TextView;

.field private adb_server_status_indicator:Lcom/mwr/dz/views/ConnectorStatusIndicator;

.field private adb_server_toggle_button:Landroid/widget/ToggleButton;

.field private server_parameters:Lcom/mwr/jdiesel/api/connectors/Server;

.field private server_view_listener:Lcom/mwr/dz/views/ServerListRowView$OnServerViewListener;

.field private volatile setting_server:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 37
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 27
    iput-object v0, p0, Lcom/mwr/dz/views/ServerListRowView;->adb_server_port_field:Landroid/widget/TextView;

    .line 28
    iput-object v0, p0, Lcom/mwr/dz/views/ServerListRowView;->adb_server_status_indicator:Lcom/mwr/dz/views/ConnectorStatusIndicator;

    .line 29
    iput-object v0, p0, Lcom/mwr/dz/views/ServerListRowView;->adb_server_toggle_button:Landroid/widget/ToggleButton;

    .line 30
    iput-object v0, p0, Lcom/mwr/dz/views/ServerListRowView;->server_parameters:Lcom/mwr/jdiesel/api/connectors/Server;

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mwr/dz/views/ServerListRowView;->setting_server:Z

    .line 39
    invoke-direct {p0}, Lcom/mwr/dz/views/ServerListRowView;->initView()V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    iput-object v0, p0, Lcom/mwr/dz/views/ServerListRowView;->adb_server_port_field:Landroid/widget/TextView;

    .line 28
    iput-object v0, p0, Lcom/mwr/dz/views/ServerListRowView;->adb_server_status_indicator:Lcom/mwr/dz/views/ConnectorStatusIndicator;

    .line 29
    iput-object v0, p0, Lcom/mwr/dz/views/ServerListRowView;->adb_server_toggle_button:Landroid/widget/ToggleButton;

    .line 30
    iput-object v0, p0, Lcom/mwr/dz/views/ServerListRowView;->server_parameters:Lcom/mwr/jdiesel/api/connectors/Server;

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mwr/dz/views/ServerListRowView;->setting_server:Z

    .line 45
    invoke-direct {p0}, Lcom/mwr/dz/views/ServerListRowView;->initView()V

    .line 46
    return-void
.end method

.method private initView()V
    .locals 3

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/mwr/dz/views/ServerListRowView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f030008

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mwr/dz/views/ServerListRowView;->addView(Landroid/view/View;)V

    .line 51
    const v0, 0x1080062

    invoke-virtual {p0, v0}, Lcom/mwr/dz/views/ServerListRowView;->setBackgroundResource(I)V

    .line 53
    const v0, 0x7f090027

    invoke-virtual {p0, v0}, Lcom/mwr/dz/views/ServerListRowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mwr/dz/views/ServerListRowView;->adb_server_port_field:Landroid/widget/TextView;

    .line 54
    const v0, 0x7f090028

    invoke-virtual {p0, v0}, Lcom/mwr/dz/views/ServerListRowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mwr/dz/views/ConnectorStatusIndicator;

    iput-object v0, p0, Lcom/mwr/dz/views/ServerListRowView;->adb_server_status_indicator:Lcom/mwr/dz/views/ConnectorStatusIndicator;

    .line 55
    const v0, 0x7f090029

    invoke-virtual {p0, v0}, Lcom/mwr/dz/views/ServerListRowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/mwr/dz/views/ServerListRowView;->adb_server_toggle_button:Landroid/widget/ToggleButton;

    .line 57
    iget-object v0, p0, Lcom/mwr/dz/views/ServerListRowView;->adb_server_toggle_button:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p0}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 58
    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/mwr/dz/views/ServerListRowView;->setting_server:Z

    if-nez v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/mwr/dz/views/ServerListRowView;->server_view_listener:Lcom/mwr/dz/views/ServerListRowView$OnServerViewListener;

    invoke-interface {v0, p2}, Lcom/mwr/dz/views/ServerListRowView$OnServerViewListener;->onToggle(Z)V

    .line 64
    :cond_0
    return-void
.end method

.method public setServerParameters(Lcom/mwr/jdiesel/api/connectors/Server;)V
    .locals 2
    .param p1, "server_parameters"    # Lcom/mwr/jdiesel/api/connectors/Server;

    .prologue
    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mwr/dz/views/ServerListRowView;->setting_server:Z

    .line 68
    iput-object p1, p0, Lcom/mwr/dz/views/ServerListRowView;->server_parameters:Lcom/mwr/jdiesel/api/connectors/Server;

    .line 70
    iget-object v0, p0, Lcom/mwr/dz/views/ServerListRowView;->adb_server_port_field:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mwr/dz/views/ServerListRowView;->server_parameters:Lcom/mwr/jdiesel/api/connectors/Server;

    invoke-virtual {v1}, Lcom/mwr/jdiesel/api/connectors/Server;->getPort()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    iget-object v0, p0, Lcom/mwr/dz/views/ServerListRowView;->adb_server_status_indicator:Lcom/mwr/dz/views/ConnectorStatusIndicator;

    iget-object v1, p0, Lcom/mwr/dz/views/ServerListRowView;->server_parameters:Lcom/mwr/jdiesel/api/connectors/Server;

    invoke-virtual {v0, v1}, Lcom/mwr/dz/views/ConnectorStatusIndicator;->setConnector(Lcom/mwr/jdiesel/api/connectors/Connector;)V

    .line 72
    iget-object v0, p0, Lcom/mwr/dz/views/ServerListRowView;->adb_server_toggle_button:Landroid/widget/ToggleButton;

    iget-object v1, p0, Lcom/mwr/dz/views/ServerListRowView;->server_parameters:Lcom/mwr/jdiesel/api/connectors/Server;

    invoke-virtual {v1}, Lcom/mwr/jdiesel/api/connectors/Server;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mwr/dz/views/ServerListRowView;->setting_server:Z

    .line 75
    iget-object v0, p0, Lcom/mwr/dz/views/ServerListRowView;->server_parameters:Lcom/mwr/jdiesel/api/connectors/Server;

    new-instance v1, Lcom/mwr/dz/views/ServerListRowView$1;

    invoke-direct {v1, p0}, Lcom/mwr/dz/views/ServerListRowView$1;-><init>(Lcom/mwr/dz/views/ServerListRowView;)V

    invoke-virtual {v0, v1}, Lcom/mwr/jdiesel/api/connectors/Server;->setOnChangeListener(Lcom/mwr/jdiesel/api/connectors/Server$OnChangeListener;)V

    .line 83
    iget-object v0, p0, Lcom/mwr/dz/views/ServerListRowView;->server_parameters:Lcom/mwr/jdiesel/api/connectors/Server;

    invoke-virtual {v0, p0}, Lcom/mwr/jdiesel/api/connectors/Server;->addObserver(Ljava/util/Observer;)V

    .line 84
    return-void
.end method

.method public setServerViewListener(Lcom/mwr/dz/views/ServerListRowView$OnServerViewListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/mwr/dz/views/ServerListRowView$OnServerViewListener;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/mwr/dz/views/ServerListRowView;->server_view_listener:Lcom/mwr/dz/views/ServerListRowView$OnServerViewListener;

    .line 88
    return-void
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 0
    .param p1, "observable"    # Ljava/util/Observable;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 92
    check-cast p1, Lcom/mwr/jdiesel/api/connectors/Server;

    .end local p1    # "observable":Ljava/util/Observable;
    invoke-virtual {p0, p1}, Lcom/mwr/dz/views/ServerListRowView;->setServerParameters(Lcom/mwr/jdiesel/api/connectors/Server;)V

    .line 93
    return-void
.end method
