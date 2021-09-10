.class public Lcom/vungle/warren/network/VungleApiImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vungle/warren/network/VungleApi;


# static fields
.field private static final CONFIG:Ljava/lang/String; = "config"

.field private static final emptyResponseConverter:Lcom/vungle/warren/network/converters/Converter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vungle/warren/network/converters/Converter<",
            "Lmh0;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private static final jsonConverter:Lcom/vungle/warren/network/converters/Converter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vungle/warren/network/converters/Converter<",
            "Lmh0;",
            "Ls60;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field baseUrl:Ldh0;

.field okHttpClient:Log0$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/vungle/warren/network/converters/JsonConverter;

    invoke-direct {v0}, Lcom/vungle/warren/network/converters/JsonConverter;-><init>()V

    sput-object v0, Lcom/vungle/warren/network/VungleApiImpl;->jsonConverter:Lcom/vungle/warren/network/converters/Converter;

    .line 2
    new-instance v0, Lcom/vungle/warren/network/converters/EmptyResponseConverter;

    invoke-direct {v0}, Lcom/vungle/warren/network/converters/EmptyResponseConverter;-><init>()V

    sput-object v0, Lcom/vungle/warren/network/VungleApiImpl;->emptyResponseConverter:Lcom/vungle/warren/network/converters/Converter;

    return-void
.end method

.method public constructor <init>(Ldh0;Log0$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/vungle/warren/network/VungleApiImpl;->baseUrl:Ldh0;

    .line 3
    iput-object p2, p0, Lcom/vungle/warren/network/VungleApiImpl;->okHttpClient:Log0$a;

    return-void
.end method

.method private createNewGetCall(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/vungle/warren/network/converters/Converter;)Lcom/vungle/warren/network/Call;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/vungle/warren/network/converters/Converter<",
            "Lmh0;",
            "TT;>;)",
            "Lcom/vungle/warren/network/Call<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {p2}, Ldh0;->i(Ljava/lang/String;)Ldh0;

    move-result-object p2

    invoke-virtual {p2}, Ldh0;->m()Ldh0$a;

    move-result-object p2

    if-eqz p3, :cond_0

    .line 2
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 3
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2, v1, v0}, Ldh0$a;->a(Ljava/lang/String;Ljava/lang/String;)Ldh0$a;

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p2}, Ldh0$a;->b()Ldh0;

    move-result-object p2

    invoke-virtual {p2}, Ldh0;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/vungle/warren/network/VungleApiImpl;->defaultBuilder(Ljava/lang/String;Ljava/lang/String;)Ljh0$a;

    move-result-object p1

    const/4 p2, 0x0

    const-string p3, "GET"

    .line 5
    invoke-virtual {p1, p3, p2}, Ljh0$a;->e(Ljava/lang/String;Lkh0;)Ljh0$a;

    .line 6
    invoke-virtual {p1}, Ljh0$a;->b()Ljh0;

    move-result-object p1

    .line 7
    new-instance p2, Lcom/vungle/warren/network/OkHttpCall;

    iget-object p3, p0, Lcom/vungle/warren/network/VungleApiImpl;->okHttpClient:Log0$a;

    check-cast p3, Lgh0;

    invoke-virtual {p3, p1}, Lgh0;->k(Ljh0;)Log0;

    move-result-object p1

    invoke-direct {p2, p1, p4}, Lcom/vungle/warren/network/OkHttpCall;-><init>(Log0;Lcom/vungle/warren/network/converters/Converter;)V

    return-object p2
.end method

.method private createNewPostCall(Ljava/lang/String;Ljava/lang/String;Ls60;)Lcom/vungle/warren/network/Call;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ls60;",
            ")",
            "Lcom/vungle/warren/network/Call<",
            "Ls60;",
            ">;"
        }
    .end annotation

    if-eqz p3, :cond_0

    .line 1
    invoke-virtual {p3}, Lp60;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_0
    const-string p3, ""

    .line 2
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/vungle/warren/network/VungleApiImpl;->defaultBuilder(Ljava/lang/String;Ljava/lang/String;)Ljh0$a;

    move-result-object p1

    const/4 p2, 0x0

    .line 3
    invoke-static {p2, p3}, Lkh0;->create(Lfh0;Ljava/lang/String;)Lkh0;

    move-result-object p2

    const-string p3, "POST"

    .line 4
    invoke-virtual {p1, p3, p2}, Ljh0$a;->e(Ljava/lang/String;Lkh0;)Ljh0$a;

    .line 5
    invoke-virtual {p1}, Ljh0$a;->b()Ljh0;

    move-result-object p1

    .line 6
    new-instance p2, Lcom/vungle/warren/network/OkHttpCall;

    iget-object p3, p0, Lcom/vungle/warren/network/VungleApiImpl;->okHttpClient:Log0$a;

    check-cast p3, Lgh0;

    invoke-virtual {p3, p1}, Lgh0;->k(Ljh0;)Log0;

    move-result-object p1

    sget-object p3, Lcom/vungle/warren/network/VungleApiImpl;->jsonConverter:Lcom/vungle/warren/network/converters/Converter;

    invoke-direct {p2, p1, p3}, Lcom/vungle/warren/network/OkHttpCall;-><init>(Log0;Lcom/vungle/warren/network/converters/Converter;)V

    return-object p2
.end method

.method private defaultBuilder(Ljava/lang/String;Ljava/lang/String;)Ljh0$a;
    .locals 1

    .line 1
    new-instance v0, Ljh0$a;

    invoke-direct {v0}, Ljh0$a;-><init>()V

    .line 2
    invoke-virtual {v0, p2}, Ljh0$a;->g(Ljava/lang/String;)Ljh0$a;

    const-string p2, "User-Agent"

    .line 3
    invoke-virtual {v0, p2, p1}, Ljh0$a;->a(Ljava/lang/String;Ljava/lang/String;)Ljh0$a;

    const-string p1, "Vungle-Version"

    const-string p2, "5.7.0"

    .line 4
    invoke-virtual {v0, p1, p2}, Ljh0$a;->a(Ljava/lang/String;Ljava/lang/String;)Ljh0$a;

    const-string p1, "Content-Type"

    const-string p2, "application/json"

    .line 5
    invoke-virtual {v0, p1, p2}, Ljh0$a;->a(Ljava/lang/String;Ljava/lang/String;)Ljh0$a;

    return-object v0
.end method


# virtual methods
.method public ads(Ljava/lang/String;Ljava/lang/String;Ls60;)Lcom/vungle/warren/network/Call;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ls60;",
            ")",
            "Lcom/vungle/warren/network/Call<",
            "Ls60;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/vungle/warren/network/VungleApiImpl;->createNewPostCall(Ljava/lang/String;Ljava/lang/String;Ls60;)Lcom/vungle/warren/network/Call;

    move-result-object p1

    return-object p1
.end method

.method public config(Ljava/lang/String;Ls60;)Lcom/vungle/warren/network/Call;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ls60;",
            ")",
            "Lcom/vungle/warren/network/Call<",
            "Ls60;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/vungle/warren/network/VungleApiImpl;->baseUrl:Ldh0;

    invoke-virtual {v1}, Ldh0;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "config"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/vungle/warren/network/VungleApiImpl;->createNewPostCall(Ljava/lang/String;Ljava/lang/String;Ls60;)Lcom/vungle/warren/network/Call;

    move-result-object p1

    return-object p1
.end method

.method public pingTPAT(Ljava/lang/String;Ljava/lang/String;)Lcom/vungle/warren/network/Call;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/vungle/warren/network/Call<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/vungle/warren/network/VungleApiImpl;->emptyResponseConverter:Lcom/vungle/warren/network/converters/Converter;

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1, v0}, Lcom/vungle/warren/network/VungleApiImpl;->createNewGetCall(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/vungle/warren/network/converters/Converter;)Lcom/vungle/warren/network/Call;

    move-result-object p1

    return-object p1
.end method

.method public reportAd(Ljava/lang/String;Ljava/lang/String;Ls60;)Lcom/vungle/warren/network/Call;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ls60;",
            ")",
            "Lcom/vungle/warren/network/Call<",
            "Ls60;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/vungle/warren/network/VungleApiImpl;->createNewPostCall(Ljava/lang/String;Ljava/lang/String;Ls60;)Lcom/vungle/warren/network/Call;

    move-result-object p1

    return-object p1
.end method

.method public reportNew(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/vungle/warren/network/Call;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/vungle/warren/network/Call<",
            "Ls60;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/vungle/warren/network/VungleApiImpl;->jsonConverter:Lcom/vungle/warren/network/converters/Converter;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/vungle/warren/network/VungleApiImpl;->createNewGetCall(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/vungle/warren/network/converters/Converter;)Lcom/vungle/warren/network/Call;

    move-result-object p1

    return-object p1
.end method

.method public ri(Ljava/lang/String;Ljava/lang/String;Ls60;)Lcom/vungle/warren/network/Call;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ls60;",
            ")",
            "Lcom/vungle/warren/network/Call<",
            "Ls60;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/vungle/warren/network/VungleApiImpl;->createNewPostCall(Ljava/lang/String;Ljava/lang/String;Ls60;)Lcom/vungle/warren/network/Call;

    move-result-object p1

    return-object p1
.end method

.method public sendLog(Ljava/lang/String;Ljava/lang/String;Ls60;)Lcom/vungle/warren/network/Call;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ls60;",
            ")",
            "Lcom/vungle/warren/network/Call<",
            "Ls60;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/vungle/warren/network/VungleApiImpl;->createNewPostCall(Ljava/lang/String;Ljava/lang/String;Ls60;)Lcom/vungle/warren/network/Call;

    move-result-object p1

    return-object p1
.end method

.method public willPlayAd(Ljava/lang/String;Ljava/lang/String;Ls60;)Lcom/vungle/warren/network/Call;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ls60;",
            ")",
            "Lcom/vungle/warren/network/Call<",
            "Ls60;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/vungle/warren/network/VungleApiImpl;->createNewPostCall(Ljava/lang/String;Ljava/lang/String;Ls60;)Lcom/vungle/warren/network/Call;

    move-result-object p1

    return-object p1
.end method
