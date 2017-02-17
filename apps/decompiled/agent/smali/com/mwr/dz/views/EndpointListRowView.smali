.class public Lcom/mwr/dz/views/EndpointListRowView;
.super Landroid/widget/LinearLayout;
.source "EndpointListRowView.java"

# interfaces
.implements Ljava/util/Observer;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private endpoint:Lcom/mwr/jdiesel/api/connectors/Endpoint;

.field private endpoint_connection_string_field:Landroid/widget/TextView;

.field private endpoint_detail_layout:Landroid/widget/RelativeLayout;

.field private endpoint_listener:Lcom/mwr/dz/EndpointAdapter$OnEndpointSelectListener;

.field private endpoint_name_field:Landroid/widget/TextView;

.field private endpoint_status_indicator:Lcom/mwr/dz/views/ConnectorStatusIndicator;

.field private endpoint_toggle_button:Landroid/widget/ToggleButton;

.field private volatile setting_endpoint:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 33
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 21
    iput-object v0, p0, Lcom/mwr/dz/views/EndpointListRowView;->endpoint:Lcom/mwr/jdiesel/api/connectors/Endpoint;

    .line 22
    iput-object v0, p0, Lcom/mwr/dz/views/EndpointListRowView;->endpoint_connection_string_field:Landroid/widget/TextView;

    .line 23
    iput-object v0, p0, Lcom/mwr/dz/views/EndpointListRowView;->endpoint_detail_layout:Landroid/widget/RelativeLayout;

    .line 24
    iput-object v0, p0, Lcom/mwr/dz/views/EndpointListRowView;->endpoint_name_field:Landroid/widget/TextView;

    .line 25
    iput-object v0, p0, Lcom/mwr/dz/views/EndpointListRowView;->endpoint_status_indicator:Lcom/mwr/dz/views/ConnectorStatusIndicator;

    .line 26
    iput-object v0, p0, Lcom/mwr/dz/views/EndpointListRowView;->endpoint_toggle_button:Landroid/widget/ToggleButton;

    .line 28
    iput-object v0, p0, Lcom/mwr/dz/views/EndpointListRowView;->endpoint_listener:Lcom/mwr/dz/EndpointAdapter$OnEndpointSelectListener;

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mwr/dz/views/EndpointListRowView;->setting_endpoint:Z

    .line 35
    invoke-direct {p0}, Lcom/mwr/dz/views/EndpointListRowView;->setUpView()V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    iput-object v0, p0, Lcom/mwr/dz/views/EndpointListRowView;->endpoint:Lcom/mwr/jdiesel/api/connectors/Endpoint;

    .line 22
    iput-object v0, p0, Lcom/mwr/dz/views/EndpointListRowView;->endpoint_connection_string_field:Landroid/widget/TextView;

    .line 23
    iput-object v0, p0, Lcom/mwr/dz/views/EndpointListRowView;->endpoint_detail_layout:Landroid/widget/RelativeLayout;

    .line 24
    iput-object v0, p0, Lcom/mwr/dz/views/EndpointListRowView;->endpoint_name_field:Landroid/widget/TextView;

    .line 25
    iput-object v0, p0, Lcom/mwr/dz/views/EndpointListRowView;->endpoint_status_indicator:Lcom/mwr/dz/views/ConnectorStatusIndicator;

    .line 26
    iput-object v0, p0, Lcom/mwr/dz/views/EndpointListRowView;->endpoint_toggle_button:Landroid/widget/ToggleButton;

    .line 28
    iput-object v0, p0, Lcom/mwr/dz/views/EndpointListRowView;->endpoint_listener:Lcom/mwr/dz/EndpointAdapter$OnEndpointSelectListener;

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mwr/dz/views/EndpointListRowView;->setting_endpoint:Z

    .line 41
    invoke-direct {p0}, Lcom/mwr/dz/views/EndpointListRowView;->setUpView()V

    .line 42
    return-void
.end method

.method private setUpView()V
    .locals 3

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/mwr/dz/views/EndpointListRowView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f030006

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mwr/dz/views/EndpointListRowView;->addView(Landroid/view/View;)V

    .line 67
    const v0, 0x7f090022

    invoke-virtual {p0, v0}, Lcom/mwr/dz/views/EndpointListRowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mwr/dz/views/EndpointListRowView;->endpoint_connection_string_field:Landroid/widget/TextView;

    .line 68
    const v0, 0x7f09001f

    invoke-virtual {p0, v0}, Lcom/mwr/dz/views/EndpointListRowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/mwr/dz/views/EndpointListRowView;->endpoint_detail_layout:Landroid/widget/RelativeLayout;

    .line 69
    const v0, 0x7f090021

    invoke-virtual {p0, v0}, Lcom/mwr/dz/views/EndpointListRowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mwr/dz/views/EndpointListRowView;->endpoint_name_field:Landroid/widget/TextView;

    .line 70
    const v0, 0x7f090004

    invoke-virtual {p0, v0}, Lcom/mwr/dz/views/EndpointListRowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mwr/dz/views/ConnectorStatusIndicator;

    iput-object v0, p0, Lcom/mwr/dz/views/EndpointListRowView;->endpoint_status_indicator:Lcom/mwr/dz/views/ConnectorStatusIndicator;

    .line 71
    const v0, 0x7f090023

    invoke-virtual {p0, v0}, Lcom/mwr/dz/views/EndpointListRowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/mwr/dz/views/EndpointListRowView;->endpoint_toggle_button:Landroid/widget/ToggleButton;

    .line 73
    iget-object v0, p0, Lcom/mwr/dz/views/EndpointListRowView;->endpoint_detail_layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    iget-object v0, p0, Lcom/mwr/dz/views/EndpointListRowView;->endpoint_toggle_button:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p0}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 75
    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/mwr/dz/views/EndpointListRowView;->setting_endpoint:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mwr/dz/views/EndpointListRowView;->endpoint_listener:Lcom/mwr/dz/EndpointAdapter$OnEndpointSelectListener;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/mwr/dz/views/EndpointListRowView;->endpoint_listener:Lcom/mwr/dz/EndpointAdapter$OnEndpointSelectListener;

    iget-object v1, p0, Lcom/mwr/dz/views/EndpointListRowView;->endpoint:Lcom/mwr/jdiesel/api/connectors/Endpoint;

    invoke-interface {v0, v1, p2}, Lcom/mwr/dz/EndpointAdapter$OnEndpointSelectListener;->onEndpointToggle(Lcom/mwr/jdiesel/api/connectors/Endpoint;Z)V

    .line 81
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/mwr/dz/views/EndpointListRowView;->endpoint_listener:Lcom/mwr/dz/EndpointAdapter$OnEndpointSelectListener;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/mwr/dz/views/EndpointListRowView;->endpoint_listener:Lcom/mwr/dz/EndpointAdapter$OnEndpointSelectListener;

    iget-object v1, p0, Lcom/mwr/dz/views/EndpointListRowView;->endpoint:Lcom/mwr/jdiesel/api/connectors/Endpoint;

    invoke-interface {v0, v1}, Lcom/mwr/dz/EndpointAdapter$OnEndpointSelectListener;->onEndpointSelect(Lcom/mwr/jdiesel/api/connectors/Endpoint;)V

    .line 87
    :cond_0
    return-void
.end method

.method public setEndpoint(Lcom/mwr/jdiesel/api/connectors/Endpoint;)V
    .locals 2
    .param p1, "endpoint"    # Lcom/mwr/jdiesel/api/connectors/Endpoint;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/mwr/dz/views/EndpointListRowView;->endpoint:Lcom/mwr/jdiesel/api/connectors/Endpoint;

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/mwr/dz/views/EndpointListRowView;->endpoint:Lcom/mwr/jdiesel/api/connectors/Endpoint;

    invoke-virtual {v0, p0}, Lcom/mwr/jdiesel/api/connectors/Endpoint;->deleteObserver(Ljava/util/Observer;)V

    .line 48
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mwr/dz/views/EndpointListRowView;->setting_endpoint:Z

    .line 49
    iput-object p1, p0, Lcom/mwr/dz/views/EndpointListRowView;->endpoint:Lcom/mwr/jdiesel/api/connectors/Endpoint;

    .line 51
    iget-object v0, p0, Lcom/mwr/dz/views/EndpointListRowView;->endpoint_connection_string_field:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mwr/dz/views/EndpointListRowView;->endpoint:Lcom/mwr/jdiesel/api/connectors/Endpoint;

    invoke-virtual {v1}, Lcom/mwr/jdiesel/api/connectors/Endpoint;->toConnectionString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    iget-object v0, p0, Lcom/mwr/dz/views/EndpointListRowView;->endpoint_name_field:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mwr/dz/views/EndpointListRowView;->endpoint:Lcom/mwr/jdiesel/api/connectors/Endpoint;

    invoke-virtual {v1}, Lcom/mwr/jdiesel/api/connectors/Endpoint;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    iget-object v0, p0, Lcom/mwr/dz/views/EndpointListRowView;->endpoint_status_indicator:Lcom/mwr/dz/views/ConnectorStatusIndicator;

    iget-object v1, p0, Lcom/mwr/dz/views/EndpointListRowView;->endpoint:Lcom/mwr/jdiesel/api/connectors/Endpoint;

    invoke-virtual {v0, v1}, Lcom/mwr/dz/views/ConnectorStatusIndicator;->setConnector(Lcom/mwr/jdiesel/api/connectors/Connector;)V

    .line 54
    iget-object v0, p0, Lcom/mwr/dz/views/EndpointListRowView;->endpoint_toggle_button:Landroid/widget/ToggleButton;

    iget-object v1, p0, Lcom/mwr/dz/views/EndpointListRowView;->endpoint:Lcom/mwr/jdiesel/api/connectors/Endpoint;

    invoke-virtual {v1}, Lcom/mwr/jdiesel/api/connectors/Endpoint;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mwr/dz/views/EndpointListRowView;->setting_endpoint:Z

    .line 57
    iget-object v0, p0, Lcom/mwr/dz/views/EndpointListRowView;->endpoint:Lcom/mwr/jdiesel/api/connectors/Endpoint;

    invoke-virtual {v0, p0}, Lcom/mwr/jdiesel/api/connectors/Endpoint;->addObserver(Ljava/util/Observer;)V

    .line 58
    return-void
.end method

.method public setEndpointListener(Lcom/mwr/dz/EndpointAdapter$OnEndpointSelectListener;)V
    .locals 0
    .param p1, "endpoint_listener"    # Lcom/mwr/dz/EndpointAdapter$OnEndpointSelectListener;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/mwr/dz/views/EndpointListRowView;->endpoint_listener:Lcom/mwr/dz/EndpointAdapter$OnEndpointSelectListener;

    .line 62
    return-void
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 0
    .param p1, "observable"    # Ljava/util/Observable;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 91
    check-cast p1, Lcom/mwr/jdiesel/api/connectors/Endpoint;

    .end local p1    # "observable":Ljava/util/Observable;
    invoke-virtual {p0, p1}, Lcom/mwr/dz/views/EndpointListRowView;->setEndpoint(Lcom/mwr/jdiesel/api/connectors/Endpoint;)V

    .line 92
    return-void
.end method
