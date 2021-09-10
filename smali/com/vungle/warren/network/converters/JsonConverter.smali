.class public Lcom/vungle/warren/network/converters/JsonConverter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vungle/warren/network/converters/Converter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/vungle/warren/network/converters/Converter<",
        "Lmh0;",
        "Ls60;",
        ">;"
    }
.end annotation


# static fields
.field private static final gson:Lj60;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lk60;

    invoke-direct {v0}, Lk60;-><init>()V

    invoke-virtual {v0}, Lk60;->a()Lj60;

    move-result-object v0

    sput-object v0, Lcom/vungle/warren/network/converters/JsonConverter;->gson:Lj60;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic convert(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lmh0;

    invoke-virtual {p0, p1}, Lcom/vungle/warren/network/converters/JsonConverter;->convert(Lmh0;)Ls60;

    move-result-object p1

    return-object p1
.end method

.method public convert(Lmh0;)Ls60;
    .locals 3

    .line 2
    :try_start_0
    invoke-virtual {p1}, Lmh0;->string()Ljava/lang/String;

    move-result-object v0

    .line 3
    sget-object v1, Lcom/vungle/warren/network/converters/JsonConverter;->gson:Lj60;

    const-class v2, Ls60;

    invoke-virtual {v1, v0, v2}, Lj60;->c(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls60;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-virtual {p1}, Lmh0;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Lmh0;->close()V

    throw v0
.end method
