.class public Lcom/vungle/warren/network/APIFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "APIFactory"


# instance fields
.field private baseUrl:Ldh0;

.field private okHttpClient:Log0$a;


# direct methods
.method public constructor <init>(Log0$a;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p2}, Ldh0;->i(Ljava/lang/String;)Ldh0;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/warren/network/APIFactory;->baseUrl:Ldh0;

    .line 3
    iput-object p1, p0, Lcom/vungle/warren/network/APIFactory;->okHttpClient:Log0$a;

    .line 4
    invoke-virtual {v0}, Ldh0;->o()Ljava/util/List;

    move-result-object p1

    .line 5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "baseUrl must end in /: "

    invoke-static {v0, p2}, Lic;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public createAPI()Lcom/vungle/warren/network/VungleApi;
    .locals 3

    .line 1
    new-instance v0, Lcom/vungle/warren/network/VungleApiImpl;

    iget-object v1, p0, Lcom/vungle/warren/network/APIFactory;->baseUrl:Ldh0;

    iget-object v2, p0, Lcom/vungle/warren/network/APIFactory;->okHttpClient:Log0$a;

    invoke-direct {v0, v1, v2}, Lcom/vungle/warren/network/VungleApiImpl;-><init>(Ldh0;Log0$a;)V

    return-object v0
.end method
