.class public Lcom/mwr/jdiesel/api/AgentInfo;
.super Ljava/lang/Object;
.source "AgentInfo.java"


# instance fields
.field private agent_version:Ljava/lang/String;

.field private package_name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "package_name"    # Ljava/lang/String;
    .param p2, "agent_version"    # Ljava/lang/String;

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/mwr/jdiesel/api/AgentInfo;->package_name:Ljava/lang/String;

    .line 11
    iput-object p2, p0, Lcom/mwr/jdiesel/api/AgentInfo;->agent_version:Ljava/lang/String;

    .line 13
    return-void
.end method


# virtual methods
.method public getAgentVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/mwr/jdiesel/api/AgentInfo;->package_name:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/mwr/jdiesel/api/AgentInfo;->package_name:Ljava/lang/String;

    return-object v0
.end method
