.class public Lcom/bumptech/glide/integration/okhttp3/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lag;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/integration/okhttp3/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lag<",
        "Lsf;",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile b:Log0$a;


# instance fields
.field private final a:Log0$a;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    sget-object v0, Lcom/bumptech/glide/integration/okhttp3/c$a;->b:Log0$a;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/bumptech/glide/integration/okhttp3/c$a;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/bumptech/glide/integration/okhttp3/c$a;->b:Log0$a;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lgh0;

    invoke-direct {v1}, Lgh0;-><init>()V

    sput-object v1, Lcom/bumptech/glide/integration/okhttp3/c$a;->b:Log0$a;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lcom/bumptech/glide/integration/okhttp3/c$a;->b:Log0$a;

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object v0, p0, Lcom/bumptech/glide/integration/okhttp3/c$a;->a:Log0$a;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public c(Ldg;)Lzf;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldg;",
            ")",
            "Lzf<",
            "Lsf;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p1, Lcom/bumptech/glide/integration/okhttp3/c;

    iget-object v0, p0, Lcom/bumptech/glide/integration/okhttp3/c$a;->a:Log0$a;

    invoke-direct {p1, v0}, Lcom/bumptech/glide/integration/okhttp3/c;-><init>(Log0$a;)V

    return-object p1
.end method
