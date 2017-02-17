.class Lcom/mwr/jdiesel/api/Protobuf$1;
.super Ljava/lang/Object;
.source "Protobuf.java"

# interfaces
.implements Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mwr/jdiesel/api/Protobuf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 14129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public assignDescriptors(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/ExtensionRegistry;
    .locals 10
    .param p1, "root"    # Lcom/google/protobuf/Descriptors$FileDescriptor;

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 14132
    invoke-static {p1}, Lcom/mwr/jdiesel/api/Protobuf;->access$0(Lcom/google/protobuf/Descriptors$FileDescriptor;)V

    .line 14134
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    .line 14133
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf;->access$1(Lcom/google/protobuf/Descriptors$Descriptor;)V

    .line 14136
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 14137
    # getter for: Lcom/mwr/jdiesel/api/Protobuf;->internal_static_com_mwr_jdiesel_api_Message_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf;->access$2()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    .line 14138
    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "Id"

    aput-object v3, v2, v5

    const-string v3, "Type"

    aput-object v3, v2, v6

    const-string v3, "SystemRequest"

    aput-object v3, v2, v7

    const-string v3, "SystemResponse"

    aput-object v3, v2, v8

    const-string v3, "ReflectionRequest"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "ReflectionResponse"

    aput-object v4, v2, v3

    .line 14139
    const-class v3, Lcom/mwr/jdiesel/api/Protobuf$Message;

    .line 14140
    const-class v4, Lcom/mwr/jdiesel/api/Protobuf$Message$Builder;

    .line 14135
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf;->access$3(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)V

    .line 14142
    # getter for: Lcom/mwr/jdiesel/api/Protobuf;->internal_static_com_mwr_jdiesel_api_Message_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf;->access$2()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$Descriptor;->getNestedTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    .line 14141
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf;->access$4(Lcom/google/protobuf/Descriptors$Descriptor;)V

    .line 14144
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 14145
    # getter for: Lcom/mwr/jdiesel/api/Protobuf;->internal_static_com_mwr_jdiesel_api_Message_ReflectionRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf;->access$5()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    .line 14146
    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "SessionId"

    aput-object v3, v2, v5

    const-string v3, "Type"

    aput-object v3, v2, v6

    const-string v3, "Resolve"

    aput-object v3, v2, v7

    const-string v3, "Construct"

    aput-object v3, v2, v8

    const-string v3, "Invoke"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "SetProperty"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "GetProperty"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "Delete"

    aput-object v4, v2, v3

    .line 14147
    const-class v3, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest;

    .line 14148
    const-class v4, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Builder;

    .line 14143
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf;->access$6(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)V

    .line 14150
    # getter for: Lcom/mwr/jdiesel/api/Protobuf;->internal_static_com_mwr_jdiesel_api_Message_ReflectionRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf;->access$5()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$Descriptor;->getNestedTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    .line 14149
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf;->access$7(Lcom/google/protobuf/Descriptors$Descriptor;)V

    .line 14152
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 14153
    # getter for: Lcom/mwr/jdiesel/api/Protobuf;->internal_static_com_mwr_jdiesel_api_Message_ReflectionRequest_Resolve_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf;->access$8()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    .line 14154
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Classname"

    aput-object v3, v2, v5

    .line 14155
    const-class v3, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve;

    .line 14156
    const-class v4, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Resolve$Builder;

    .line 14151
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf;->access$9(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)V

    .line 14158
    # getter for: Lcom/mwr/jdiesel/api/Protobuf;->internal_static_com_mwr_jdiesel_api_Message_ReflectionRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf;->access$5()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$Descriptor;->getNestedTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    .line 14157
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf;->access$10(Lcom/google/protobuf/Descriptors$Descriptor;)V

    .line 14160
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 14161
    # getter for: Lcom/mwr/jdiesel/api/Protobuf;->internal_static_com_mwr_jdiesel_api_Message_ReflectionRequest_Construct_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf;->access$11()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    .line 14162
    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "Object"

    aput-object v3, v2, v5

    const-string v3, "Argument"

    aput-object v3, v2, v6

    .line 14163
    const-class v3, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct;

    .line 14164
    const-class v4, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Construct$Builder;

    .line 14159
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf;->access$12(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)V

    .line 14166
    # getter for: Lcom/mwr/jdiesel/api/Protobuf;->internal_static_com_mwr_jdiesel_api_Message_ReflectionRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf;->access$5()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$Descriptor;->getNestedTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    .line 14165
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf;->access$13(Lcom/google/protobuf/Descriptors$Descriptor;)V

    .line 14168
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 14169
    # getter for: Lcom/mwr/jdiesel/api/Protobuf;->internal_static_com_mwr_jdiesel_api_Message_ReflectionRequest_Invoke_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf;->access$14()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    .line 14170
    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "Object"

    aput-object v3, v2, v5

    const-string v3, "Method"

    aput-object v3, v2, v6

    const-string v3, "Argument"

    aput-object v3, v2, v7

    .line 14171
    const-class v3, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke;

    .line 14172
    const-class v4, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Invoke$Builder;

    .line 14167
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf;->access$15(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)V

    .line 14174
    # getter for: Lcom/mwr/jdiesel/api/Protobuf;->internal_static_com_mwr_jdiesel_api_Message_ReflectionRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf;->access$5()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$Descriptor;->getNestedTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    .line 14173
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf;->access$16(Lcom/google/protobuf/Descriptors$Descriptor;)V

    .line 14176
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 14177
    # getter for: Lcom/mwr/jdiesel/api/Protobuf;->internal_static_com_mwr_jdiesel_api_Message_ReflectionRequest_SetProperty_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf;->access$17()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    .line 14178
    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "Object"

    aput-object v3, v2, v5

    const-string v3, "Property"

    aput-object v3, v2, v6

    const-string v3, "Value"

    aput-object v3, v2, v7

    .line 14179
    const-class v3, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty;

    .line 14180
    const-class v4, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$SetProperty$Builder;

    .line 14175
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf;->access$18(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)V

    .line 14182
    # getter for: Lcom/mwr/jdiesel/api/Protobuf;->internal_static_com_mwr_jdiesel_api_Message_ReflectionRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf;->access$5()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$Descriptor;->getNestedTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    .line 14181
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf;->access$19(Lcom/google/protobuf/Descriptors$Descriptor;)V

    .line 14184
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 14185
    # getter for: Lcom/mwr/jdiesel/api/Protobuf;->internal_static_com_mwr_jdiesel_api_Message_ReflectionRequest_GetProperty_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf;->access$20()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    .line 14186
    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "Object"

    aput-object v3, v2, v5

    const-string v3, "Property"

    aput-object v3, v2, v6

    .line 14187
    const-class v3, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty;

    .line 14188
    const-class v4, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$GetProperty$Builder;

    .line 14183
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf;->access$21(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)V

    .line 14190
    # getter for: Lcom/mwr/jdiesel/api/Protobuf;->internal_static_com_mwr_jdiesel_api_Message_ReflectionRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf;->access$5()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$Descriptor;->getNestedTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    .line 14189
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf;->access$22(Lcom/google/protobuf/Descriptors$Descriptor;)V

    .line 14192
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 14193
    # getter for: Lcom/mwr/jdiesel/api/Protobuf;->internal_static_com_mwr_jdiesel_api_Message_ReflectionRequest_Delete_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf;->access$23()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    .line 14194
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Object"

    aput-object v3, v2, v5

    .line 14195
    const-class v3, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete;

    .line 14196
    const-class v4, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionRequest$Delete$Builder;

    .line 14191
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf;->access$24(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)V

    .line 14198
    # getter for: Lcom/mwr/jdiesel/api/Protobuf;->internal_static_com_mwr_jdiesel_api_Message_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf;->access$2()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$Descriptor;->getNestedTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    .line 14197
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf;->access$25(Lcom/google/protobuf/Descriptors$Descriptor;)V

    .line 14200
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 14201
    # getter for: Lcom/mwr/jdiesel/api/Protobuf;->internal_static_com_mwr_jdiesel_api_Message_ReflectionResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf;->access$26()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    .line 14202
    new-array v2, v9, [Ljava/lang/String;

    const-string v3, "SessionId"

    aput-object v3, v2, v5

    const-string v3, "Status"

    aput-object v3, v2, v6

    const-string v3, "Result"

    aput-object v3, v2, v7

    const-string v3, "Errormessage"

    aput-object v3, v2, v8

    .line 14203
    const-class v3, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse;

    .line 14204
    const-class v4, Lcom/mwr/jdiesel/api/Protobuf$Message$ReflectionResponse$Builder;

    .line 14199
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf;->access$27(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)V

    .line 14206
    # getter for: Lcom/mwr/jdiesel/api/Protobuf;->internal_static_com_mwr_jdiesel_api_Message_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf;->access$2()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$Descriptor;->getNestedTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    .line 14205
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf;->access$28(Lcom/google/protobuf/Descriptors$Descriptor;)V

    .line 14208
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 14209
    # getter for: Lcom/mwr/jdiesel/api/Protobuf;->internal_static_com_mwr_jdiesel_api_Message_SystemRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf;->access$29()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    .line 14210
    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "Type"

    aput-object v3, v2, v5

    const-string v3, "Device"

    aput-object v3, v2, v6

    const-string v3, "Agent"

    aput-object v3, v2, v7

    const-string v3, "SessionId"

    aput-object v3, v2, v8

    const-string v3, "Password"

    aput-object v3, v2, v9

    .line 14211
    const-class v3, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest;

    .line 14212
    const-class v4, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemRequest$Builder;

    .line 14207
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf;->access$30(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)V

    .line 14214
    # getter for: Lcom/mwr/jdiesel/api/Protobuf;->internal_static_com_mwr_jdiesel_api_Message_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf;->access$2()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$Descriptor;->getNestedTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    .line 14213
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf;->access$31(Lcom/google/protobuf/Descriptors$Descriptor;)V

    .line 14216
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 14217
    # getter for: Lcom/mwr/jdiesel/api/Protobuf;->internal_static_com_mwr_jdiesel_api_Message_SystemResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf;->access$32()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    .line 14218
    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "Type"

    aput-object v3, v2, v5

    const-string v3, "Status"

    aput-object v3, v2, v6

    const-string v3, "Devices"

    aput-object v3, v2, v7

    const-string v3, "Agent"

    aput-object v3, v2, v8

    const-string v3, "SessionId"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "ErrorMessage"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "Sessions"

    aput-object v4, v2, v3

    .line 14219
    const-class v3, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse;

    .line 14220
    const-class v4, Lcom/mwr/jdiesel/api/Protobuf$Message$SystemResponse$Builder;

    .line 14215
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf;->access$33(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)V

    .line 14222
    # getter for: Lcom/mwr/jdiesel/api/Protobuf;->internal_static_com_mwr_jdiesel_api_Message_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf;->access$2()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$Descriptor;->getNestedTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    .line 14221
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf;->access$34(Lcom/google/protobuf/Descriptors$Descriptor;)V

    .line 14224
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 14225
    # getter for: Lcom/mwr/jdiesel/api/Protobuf;->internal_static_com_mwr_jdiesel_api_Message_Argument_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf;->access$35()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    .line 14226
    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "Type"

    aput-object v3, v2, v5

    const-string v3, "Primitive"

    aput-object v3, v2, v6

    const-string v3, "String"

    aput-object v3, v2, v7

    const-string v3, "Object"

    aput-object v3, v2, v8

    const-string v3, "Array"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "Data"

    aput-object v4, v2, v3

    .line 14227
    const-class v3, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument;

    .line 14228
    const-class v4, Lcom/mwr/jdiesel/api/Protobuf$Message$Argument$Builder;

    .line 14223
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf;->access$36(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)V

    .line 14230
    # getter for: Lcom/mwr/jdiesel/api/Protobuf;->internal_static_com_mwr_jdiesel_api_Message_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf;->access$2()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$Descriptor;->getNestedTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    .line 14229
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf;->access$37(Lcom/google/protobuf/Descriptors$Descriptor;)V

    .line 14232
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 14233
    # getter for: Lcom/mwr/jdiesel/api/Protobuf;->internal_static_com_mwr_jdiesel_api_Message_Array_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf;->access$38()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    .line 14234
    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "Type"

    aput-object v3, v2, v5

    const-string v3, "Element"

    aput-object v3, v2, v6

    .line 14235
    const-class v3, Lcom/mwr/jdiesel/api/Protobuf$Message$Array;

    .line 14236
    const-class v4, Lcom/mwr/jdiesel/api/Protobuf$Message$Array$Builder;

    .line 14231
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf;->access$39(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)V

    .line 14238
    # getter for: Lcom/mwr/jdiesel/api/Protobuf;->internal_static_com_mwr_jdiesel_api_Message_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf;->access$2()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$Descriptor;->getNestedTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    .line 14237
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf;->access$40(Lcom/google/protobuf/Descriptors$Descriptor;)V

    .line 14240
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 14241
    # getter for: Lcom/mwr/jdiesel/api/Protobuf;->internal_static_com_mwr_jdiesel_api_Message_Device_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf;->access$41()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    .line 14242
    new-array v2, v9, [Ljava/lang/String;

    const-string v3, "Id"

    aput-object v3, v2, v5

    const-string v3, "Manufacturer"

    aput-object v3, v2, v6

    const-string v3, "Model"

    aput-object v3, v2, v7

    const-string v3, "Software"

    aput-object v3, v2, v8

    .line 14243
    const-class v3, Lcom/mwr/jdiesel/api/Protobuf$Message$Device;

    .line 14244
    const-class v4, Lcom/mwr/jdiesel/api/Protobuf$Message$Device$Builder;

    .line 14239
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf;->access$42(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)V

    .line 14246
    # getter for: Lcom/mwr/jdiesel/api/Protobuf;->internal_static_com_mwr_jdiesel_api_Message_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf;->access$2()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$Descriptor;->getNestedTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x7

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    .line 14245
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf;->access$43(Lcom/google/protobuf/Descriptors$Descriptor;)V

    .line 14248
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 14249
    # getter for: Lcom/mwr/jdiesel/api/Protobuf;->internal_static_com_mwr_jdiesel_api_Message_Agent_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf;->access$44()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    .line 14250
    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "PkgName"

    aput-object v3, v2, v5

    const-string v3, "AgentVersion"

    aput-object v3, v2, v6

    .line 14251
    const-class v3, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent;

    .line 14252
    const-class v4, Lcom/mwr/jdiesel/api/Protobuf$Message$Agent$Builder;

    .line 14247
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf;->access$45(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)V

    .line 14254
    # getter for: Lcom/mwr/jdiesel/api/Protobuf;->internal_static_com_mwr_jdiesel_api_Message_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf;->access$2()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$Descriptor;->getNestedTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x8

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    .line 14253
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf;->access$46(Lcom/google/protobuf/Descriptors$Descriptor;)V

    .line 14256
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 14257
    # getter for: Lcom/mwr/jdiesel/api/Protobuf;->internal_static_com_mwr_jdiesel_api_Message_ObjectReference_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf;->access$47()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    .line 14258
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Reference"

    aput-object v3, v2, v5

    .line 14259
    const-class v3, Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference;

    .line 14260
    const-class v4, Lcom/mwr/jdiesel/api/Protobuf$Message$ObjectReference$Builder;

    .line 14255
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf;->access$48(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)V

    .line 14262
    # getter for: Lcom/mwr/jdiesel/api/Protobuf;->internal_static_com_mwr_jdiesel_api_Message_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf;->access$2()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$Descriptor;->getNestedTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x9

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    .line 14261
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf;->access$49(Lcom/google/protobuf/Descriptors$Descriptor;)V

    .line 14264
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 14265
    # getter for: Lcom/mwr/jdiesel/api/Protobuf;->internal_static_com_mwr_jdiesel_api_Message_Primitive_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf;->access$50()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    .line 14266
    const/16 v2, 0x9

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "Type"

    aput-object v3, v2, v5

    const-string v3, "Bool"

    aput-object v3, v2, v6

    const-string v3, "Int"

    aput-object v3, v2, v7

    const-string v3, "Long"

    aput-object v3, v2, v8

    const-string v3, "Float"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "Byte"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "Short"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "Double"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "Char"

    aput-object v4, v2, v3

    .line 14267
    const-class v3, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive;

    .line 14268
    const-class v4, Lcom/mwr/jdiesel/api/Protobuf$Message$Primitive$Builder;

    .line 14263
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf;->access$51(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)V

    .line 14270
    # getter for: Lcom/mwr/jdiesel/api/Protobuf;->internal_static_com_mwr_jdiesel_api_Message_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf;->access$2()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$Descriptor;->getNestedTypes()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0xa

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    .line 14269
    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf;->access$52(Lcom/google/protobuf/Descriptors$Descriptor;)V

    .line 14272
    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 14273
    # getter for: Lcom/mwr/jdiesel/api/Protobuf;->internal_static_com_mwr_jdiesel_api_Message_Session_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {}, Lcom/mwr/jdiesel/api/Protobuf;->access$53()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    .line 14274
    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "Id"

    aput-object v3, v2, v5

    const-string v3, "DeviceId"

    aput-object v3, v2, v6

    .line 14275
    const-class v3, Lcom/mwr/jdiesel/api/Protobuf$Message$Session;

    .line 14276
    const-class v4, Lcom/mwr/jdiesel/api/Protobuf$Message$Session$Builder;

    .line 14271
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/mwr/jdiesel/api/Protobuf;->access$54(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)V

    .line 14277
    const/4 v0, 0x0

    return-object v0
.end method
