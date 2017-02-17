.class public Lnet/veritran/vtuserapplication/model/NavigationManager;
.super Ljava/lang/Object;


# static fields
.field private static b:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lnet/veritran/vtuserapplication/model/NavigationListener;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/lang/String;

.field private c:Lnet/veritran/vtuserapplication/model/NavigationView;

.field private d:Lnet/veritran/vtuserapplication/configuration/ConfigurationManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lnet/veritran/vtuserapplication/model/NavigationManager;->b:Ljava/util/Vector;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "NAVM"

    iput-object v0, p0, Lnet/veritran/vtuserapplication/model/NavigationManager;->a:Ljava/lang/String;

    return-void
.end method

.method private a(Ljava/util/Hashtable;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v3, -0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/Hashtable;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v5

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lnet/veritran/vtuserapplication/model/NavigationManager;->d:Lnet/veritran/vtuserapplication/configuration/ConfigurationManager;

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/configuration/ConfigurationManager;->getParametersResult()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v1

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationParameter;

    if-eqz v2, :cond_2

    if-nez v1, :cond_4

    :cond_2
    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationParameter;->getParameter()Ljava/lang/String;

    move-result-object v6

    const-string v7, "GENERIC_LAUNCH_TOKEN_LIST"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    move-object v2, v0

    :cond_3
    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationParameter;->getParameter()Ljava/lang/String;

    move-result-object v6

    const-string v7, "GENERIC_LAUNCH_DEFAULT_TOKEN"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_d

    :goto_2
    move-object v1, v0

    goto :goto_1

    :cond_4
    new-instance v6, Ljava/util/Hashtable;

    invoke-direct {v6}, Ljava/util/Hashtable;-><init>()V

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationParameter;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {v2}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationParameter;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/16 v4, 0x3d

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-eq v4, v3, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-eq v4, v7, :cond_5

    invoke-virtual {v0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v6, v7, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    :cond_6
    if-eqz v1, :cond_c

    invoke-virtual {v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationParameter;->getValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationParameter;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    :try_start_1
    invoke-virtual {v1}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationParameter;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    move v2, v0

    :goto_4
    invoke-virtual {v6}, Ljava/util/Hashtable;->size()I

    move-result v0

    if-nez v0, :cond_7

    if-ne v2, v3, :cond_7

    move v0, v5

    goto/16 :goto_0

    :catch_1
    move-exception v0

    move v2, v3

    goto :goto_4

    :cond_7
    const-string v0, ""

    invoke-virtual {p1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v7

    move-object v4, v0

    :goto_5
    invoke-interface {v7}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v7}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v8

    invoke-virtual {v6, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v8, v1, v0}, Lnet/veritran/vtuserapplication/model/Model;->addRegister(ILjava/lang/String;)V

    goto :goto_5

    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    goto :goto_5

    :cond_9
    if-eqz v4, :cond_b

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    if-eq v2, v3, :cond_b

    :goto_6
    const-string v0, "&"

    invoke-virtual {v4, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v4, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    goto :goto_6

    :cond_a
    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v0

    invoke-virtual {v0, v2, v4}, Lnet/veritran/vtuserapplication/model/Model;->addRegister(ILjava/lang/String;)V

    :cond_b
    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_c
    move v2, v3

    goto/16 :goto_4

    :cond_d
    move-object v0, v1

    goto/16 :goto_2
.end method

.method public static addListener(Lnet/veritran/vtuserapplication/model/NavigationListener;)V
    .locals 1

    sget-object v0, Lnet/veritran/vtuserapplication/model/NavigationManager;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    sget-object v0, Lnet/veritran/vtuserapplication/model/NavigationManager;->b:Ljava/util/Vector;

    invoke-virtual {v0, p0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized applyNavigationView(Lnet/veritran/vtuserapplication/model/NavigationView;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lnet/veritran/vtuserapplication/model/NavigationManager;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Applying patch: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lnet/veritran/vtuserapplication/model/NavigationView;

    invoke-direct {v0}, Lnet/veritran/vtuserapplication/model/NavigationView;-><init>()V

    iget-object v0, p0, Lnet/veritran/vtuserapplication/model/NavigationManager;->c:Lnet/veritran/vtuserapplication/model/NavigationView;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "no NavigationView where apply the new one"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lnet/veritran/vtuserapplication/model/NavigationManager;->c:Lnet/veritran/vtuserapplication/model/NavigationView;

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/model/NavigationView;->getView()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lnet/veritran/vtuserapplication/model/NavigationView;->getView()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-virtual {p1}, Lnet/veritran/vtuserapplication/model/NavigationView;->getAreas()Ljava/util/Enumeration;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lnet/veritran/vtuserapplication/model/NavigationView;->getSequenceForArea(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lnet/veritran/vtuserapplication/model/NavigationManager;->c:Lnet/veritran/vtuserapplication/model/NavigationView;

    invoke-virtual {v3, v0, v2}, Lnet/veritran/vtuserapplication/model/NavigationView;->setAreaWithSequence(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iput-object p1, p0, Lnet/veritran/vtuserapplication/model/NavigationManager;->c:Lnet/veritran/vtuserapplication/model/NavigationView;

    :cond_3
    iget-object v0, p0, Lnet/veritran/vtuserapplication/model/NavigationManager;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "currentView: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lnet/veritran/vtuserapplication/model/NavigationManager;->c:Lnet/veritran/vtuserapplication/model/NavigationView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized defineNextNavigationViewPatch(Ljava/lang/String;)Lnet/veritran/vtuserapplication/model/NavigationView;
    .locals 8

    const/4 v2, 0x0

    const/4 v3, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lnet/veritran/vtuserapplication/model/NavigationManager;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Applying defineNextNavigationViewPatch: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lnet/veritran/vtuserapplication/model/NavigationView;

    invoke-direct {v1}, Lnet/veritran/vtuserapplication/model/NavigationView;-><init>()V

    iget-object v0, p0, Lnet/veritran/vtuserapplication/model/NavigationManager;->c:Lnet/veritran/vtuserapplication/model/NavigationView;

    if-nez v0, :cond_8

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v0

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/model/Model;->applicationStartedByGenericLaunch()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lnet/veritran/vtuserapplication/model/NavigationManager;->d:Lnet/veritran/vtuserapplication/configuration/ConfigurationManager;

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/configuration/ConfigurationManager;->getParametersResult()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationParameter;

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationParameter;->getParameter()Ljava/lang/String;

    move-result-object v5

    const-string v6, "GENERIC_LAUNCH_START"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationParameter;->getValue()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v4

    invoke-virtual {v4}, Lnet/veritran/vtuserapplication/model/Model;->getGenericLaunchParameters()Ljava/util/Hashtable;

    move-result-object v4

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/util/Hashtable;->size()I

    move-result v5

    if-lez v5, :cond_1

    invoke-direct {p0, v4}, Lnet/veritran/vtuserapplication/model/NavigationManager;->a(Ljava/util/Hashtable;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Setup;->getApplicationSmartImplementation()Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface {v4, v5, v6, v7}, Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;->wasStartedBySpecialLaunch(ZZLjava/util/Hashtable;)V

    :cond_1
    :goto_1
    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v4

    invoke-virtual {v4}, Lnet/veritran/vtuserapplication/model/Model;->applicationStartedByPushNotification()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v0, p0, Lnet/veritran/vtuserapplication/model/NavigationManager;->d:Lnet/veritran/vtuserapplication/configuration/ConfigurationManager;

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/configuration/ConfigurationManager;->getAppProperties()Ljava/util/Hashtable;

    move-result-object v0

    const-string v4, "pushstartview"

    invoke-virtual {v0, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Setup;->getApplicationSmartImplementation()Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;->wasStartedByPushNotification(Z)V

    :cond_2
    if-eqz v0, :cond_3

    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    :cond_3
    iget-object v0, p0, Lnet/veritran/vtuserapplication/model/NavigationManager;->d:Lnet/veritran/vtuserapplication/configuration/ConfigurationManager;

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/configuration/ConfigurationManager;->getAppProperties()Ljava/util/Hashtable;

    move-result-object v0

    const-string v4, "startview"

    invoke-virtual {v0, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v4, v0

    :goto_2
    iget-object v0, p0, Lnet/veritran/vtuserapplication/model/NavigationManager;->d:Lnet/veritran/vtuserapplication/configuration/ConfigurationManager;

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Lnet/veritran/vtuserapplication/configuration/ConfigurationManager;->getViewsResult(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_5

    :cond_4
    invoke-static {}, Lnet/veritran/vtuserapplication/model/Setup;->getApplicationSmartImplementation()Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;

    move-result-object v0

    const/16 v1, 0x22d

    invoke-interface {v0, v1}, Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;->showApplicationError(I)V

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Setup;->getApplicationSmartImplementation()Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;

    move-result-object v0

    invoke-interface {v0}, Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;->deleteConfigurationFromInternalStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v2

    :goto_3
    monitor-exit p0

    return-object v0

    :cond_5
    const/4 v2, 0x0

    :try_start_1
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationView;

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationView;->getAllVisualAreaInstances()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {v1, v4}, Lnet/veritran/vtuserapplication/model/NavigationView;->setView(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualAreaInstance;

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualAreaInstance;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v5, "S000"

    invoke-virtual {v1, v0, v5}, Lnet/veritran/vtuserapplication/model/NavigationView;->setAreaWithSequence(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_6
    :goto_5
    :try_start_2
    sget-object v0, Lnet/veritran/vtuserapplication/model/NavigationManager;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v3, v0, :cond_7

    sget-object v0, Lnet/veritran/vtuserapplication/model/NavigationManager;->b:Ljava/util/Vector;

    invoke-virtual {v0, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/veritran/vtuserapplication/model/NavigationListener;

    invoke-interface {v0, v4}, Lnet/veritran/vtuserapplication/model/NavigationListener;->viewLoaded(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_7
    move-object v0, v1

    goto :goto_3

    :cond_8
    invoke-virtual {p0, p1}, Lnet/veritran/vtuserapplication/model/NavigationManager;->defineNextNavigationViewPatchFromString(Ljava/lang/String;)Lnet/veritran/vtuserapplication/model/NavigationView;

    move-result-object v2

    iget-object v0, p0, Lnet/veritran/vtuserapplication/model/NavigationManager;->c:Lnet/veritran/vtuserapplication/model/NavigationView;

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/model/NavigationView;->getView()Ljava/lang/String;

    if-nez v2, :cond_9

    iget-object v0, p0, Lnet/veritran/vtuserapplication/model/NavigationManager;->a:Ljava/lang/String;

    const-string v1, "PATCH is null. Retrying. (meaby caused by rotation)"

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lnet/veritran/vtuserapplication/model/NavigationManager;->defineNextNavigationViewPatch(Ljava/lang/String;)Lnet/veritran/vtuserapplication/model/NavigationView;

    move-result-object v0

    goto :goto_3

    :cond_9
    invoke-virtual {v2}, Lnet/veritran/vtuserapplication/model/NavigationView;->getView()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_b

    :goto_6
    sget-object v0, Lnet/veritran/vtuserapplication/model/NavigationManager;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v3, v0, :cond_a

    sget-object v0, Lnet/veritran/vtuserapplication/model/NavigationManager;->b:Ljava/util/Vector;

    invoke-virtual {v0, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/veritran/vtuserapplication/model/NavigationListener;

    invoke-virtual {v2}, Lnet/veritran/vtuserapplication/model/NavigationView;->getAreas()Ljava/util/Enumeration;

    move-result-object v1

    invoke-interface {v0, v1}, Lnet/veritran/vtuserapplication/model/NavigationListener;->areasUpdated(Ljava/util/Enumeration;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_a
    move-object v0, v2

    goto :goto_3

    :cond_b
    :goto_7
    sget-object v0, Lnet/veritran/vtuserapplication/model/NavigationManager;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v3, v0, :cond_c

    sget-object v0, Lnet/veritran/vtuserapplication/model/NavigationManager;->b:Ljava/util/Vector;

    invoke-virtual {v0, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/veritran/vtuserapplication/model/NavigationListener;

    invoke-interface {v0, v4}, Lnet/veritran/vtuserapplication/model/NavigationListener;->viewLoaded(Ljava/lang/String;)V

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_7

    :cond_c
    invoke-virtual {v1, v4}, Lnet/veritran/vtuserapplication/model/NavigationView;->setView(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v0, p0, Lnet/veritran/vtuserapplication/model/NavigationManager;->d:Lnet/veritran/vtuserapplication/configuration/ConfigurationManager;

    const/4 v3, 0x0

    invoke-virtual {v0, v4, v3}, Lnet/veritran/vtuserapplication/configuration/ConfigurationManager;->getViewsResult(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationView;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationView;->getAllVisualAreaInstances()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualAreaInstance;

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationVisualAreaInstance;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v4, "S000"

    invoke-virtual {v1, v0, v4}, Lnet/veritran/vtuserapplication/model/NavigationView;->setAreaWithSequence(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Requested view doesn\'t exists"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    invoke-virtual {v2}, Lnet/veritran/vtuserapplication/model/NavigationView;->getAreas()Ljava/util/Enumeration;

    move-result-object v3

    :goto_9
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lnet/veritran/vtuserapplication/model/NavigationView;->getSequenceForArea(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Lnet/veritran/vtuserapplication/model/NavigationView;->setAreaWithSequence(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_9

    :cond_e
    move-object v0, v1

    goto/16 :goto_3

    :cond_f
    move-object v4, v0

    goto/16 :goto_2

    :cond_10
    move-object v0, v2

    goto/16 :goto_0

    :cond_11
    move-object v0, v2

    goto/16 :goto_1
.end method

.method public declared-synchronized defineNextNavigationViewPatchFromString(Ljava/lang/String;)Lnet/veritran/vtuserapplication/model/NavigationView;
    .locals 6

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    new-instance v0, Lnet/veritran/vtuserapplication/model/NavigationView;

    invoke-direct {v0}, Lnet/veritran/vtuserapplication/model/NavigationView;-><init>()V

    invoke-virtual {p0, p1}, Lnet/veritran/vtuserapplication/model/NavigationManager;->getNextStateCandidatesParts(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v3, v2, v3

    const/4 v4, 0x1

    aget-object v2, v2, v4

    if-eqz v3, :cond_1

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x56

    if-eq v4, v5, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid next view: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    invoke-virtual {v0, v3}, Lnet/veritran/vtuserapplication/model/NavigationView;->setView(Ljava/lang/String;)V

    :cond_1
    if-eqz v2, :cond_3

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_3

    aget-object v3, v2, v1

    invoke-virtual {p0, v3}, Lnet/veritran/vtuserapplication/model/NavigationManager;->getContentAndSequence(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Invalid candidate: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v1, v2, v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/4 v4, 0x0

    aget-object v4, v3, v4

    const/4 v5, 0x1

    aget-object v3, v3, v5

    invoke-virtual {v0, v4, v3}, Lnet/veritran/vtuserapplication/model/NavigationView;->setAreaWithSequence(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/model/NavigationView;->getView()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/model/NavigationView;->getAreaWithSequenceCount()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-nez v1, :cond_4

    const/4 v0, 0x0

    :cond_4
    monitor-exit p0

    return-object v0
.end method

.method public getConfigurationManager()Lnet/veritran/vtuserapplication/configuration/ConfigurationManager;
    .locals 1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/model/NavigationManager;->d:Lnet/veritran/vtuserapplication/configuration/ConfigurationManager;

    return-object v0
.end method

.method public getContentAndSequence(Ljava/lang/String;)[Ljava/lang/String;
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x0

    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    if-eq v2, v5, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    aget-object v2, v1, v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    aget-object v2, v1, v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v5, :cond_0

    aget-object v2, v1, v4

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x53

    if-ne v2, v3, :cond_0

    move-object v0, v1

    goto :goto_0
.end method

.method public getCurrentView()Lnet/veritran/vtuserapplication/model/NavigationView;
    .locals 1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/model/NavigationManager;->c:Lnet/veritran/vtuserapplication/model/NavigationView;

    return-object v0
.end method

.method public getNextStateCandidatesParts(Ljava/lang/String;)[Ljava/lang/String;
    .locals 8

    const/16 v1, 0x56

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x1

    if-nez p1, :cond_0

    new-array v0, v7, [Ljava/lang/String;

    aput-object v2, v0, v6

    aput-object v2, v0, v5

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, v5, :cond_1

    new-array v0, v7, [Ljava/lang/String;

    aput-object v2, v0, v6

    aput-object v2, v0, v5

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v1, :cond_2

    new-array v0, v7, [Ljava/lang/String;

    aput-object v2, v0, v6

    aput-object v2, v0, v5

    goto :goto_0

    :cond_2
    const-string v0, "|"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_3

    invoke-virtual {p1, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    move-object v3, v1

    move-object v1, v0

    :goto_1
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, v5, :cond_5

    new-array v0, v7, [Ljava/lang/String;

    aput-object v2, v0, v6

    aput-object v2, v0, v5

    goto :goto_0

    :cond_3
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v1, :cond_4

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v2

    move-object v3, v0

    goto :goto_1

    :cond_4
    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    move-object v3, v2

    goto :goto_1

    :cond_5
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v4, 0x3

    if-gt v0, v4, :cond_6

    new-array v0, v7, [Ljava/lang/String;

    aput-object v2, v0, v6

    aput-object v2, v0, v5

    goto :goto_0

    :cond_6
    new-array v0, v7, [Ljava/lang/String;

    aput-object v3, v0, v6

    aput-object v1, v0, v5

    goto :goto_0
.end method

.method public setConfigurationManager(Lnet/veritran/vtuserapplication/configuration/ConfigurationManager;)V
    .locals 0

    iput-object p1, p0, Lnet/veritran/vtuserapplication/model/NavigationManager;->d:Lnet/veritran/vtuserapplication/configuration/ConfigurationManager;

    return-void
.end method

.method public setCurrentView(Lnet/veritran/vtuserapplication/model/NavigationView;)V
    .locals 3

    iput-object p1, p0, Lnet/veritran/vtuserapplication/model/NavigationManager;->c:Lnet/veritran/vtuserapplication/model/NavigationView;

    iget-object v0, p0, Lnet/veritran/vtuserapplication/model/NavigationManager;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "currentView="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lnet/veritran/vtuserapplication/model/NavigationManager;->c:Lnet/veritran/vtuserapplication/model/NavigationView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/veritran/vtuserapplication/utils/VTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public tryToStartFromPushNotification()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lnet/veritran/vtuserapplication/model/NavigationManager;->c:Lnet/veritran/vtuserapplication/model/NavigationView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/veritran/vtuserapplication/model/NavigationManager;->d:Lnet/veritran/vtuserapplication/configuration/ConfigurationManager;

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/configuration/ConfigurationManager;->getAppProperties()Ljava/util/Hashtable;

    move-result-object v0

    const-string v1, "pushstartview"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Setup;->getApplicationSmartImplementation()Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "V"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;->processAction(Ljava/lang/String;)V

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Setup;->getApplicationSmartImplementation()Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;->wasStartedByPushNotification(Z)V
    :try_end_0
    .catch Lnet/veritran/vtuserapplication/model/VTApplicationMustRestartException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Setup;->getApplicationSmartImplementation()Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;

    move-result-object v0

    invoke-interface {v0}, Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;->restartApplication()V

    goto :goto_0
.end method

.method public tryToStartFromSpecialLaunh()V
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lnet/veritran/vtuserapplication/model/NavigationManager;->c:Lnet/veritran/vtuserapplication/model/NavigationView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/veritran/vtuserapplication/model/NavigationManager;->d:Lnet/veritran/vtuserapplication/configuration/ConfigurationManager;

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/configuration/ConfigurationManager;->getParametersResult()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationParameter;

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationParameter;->getParameter()Ljava/lang/String;

    move-result-object v3

    const-string v4, "GENERIC_LAUNCH_START"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lnet/veritran/vtuserapplication/configuration/elements/ConfigurationParameter;->getValue()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {}, Lnet/veritran/vtuserapplication/model/Model;->getInstance()Lnet/veritran/vtuserapplication/model/Model;

    move-result-object v1

    invoke-virtual {v1}, Lnet/veritran/vtuserapplication/model/Model;->getGenericLaunchParameters()Ljava/util/Hashtable;

    move-result-object v1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/Hashtable;->size()I

    move-result v2

    if-lez v2, :cond_1

    invoke-direct {p0, v1}, Lnet/veritran/vtuserapplication/model/NavigationManager;->a(Ljava/util/Hashtable;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Setup;->getApplicationSmartImplementation()Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;->wasStartedBySpecialLaunch(ZZLjava/util/Hashtable;)V

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Setup;->getApplicationSmartImplementation()Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "V"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;->processAction(Ljava/lang/String;)V
    :try_end_0
    .catch Lnet/veritran/vtuserapplication/model/VTApplicationMustRestartException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lnet/veritran/vtuserapplication/model/Setup;->getApplicationSmartImplementation()Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;

    move-result-object v0

    invoke-interface {v0}, Lnet/veritran/vtuserapplication/model/ApplicationSmartInterface;->restartApplication()V

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method
