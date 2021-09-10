.class Lcom/bumptech/glide/i$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Laj$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field private final a:Llj;

.field final synthetic b:Lcom/bumptech/glide/i;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/i;Llj;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bumptech/glide/i$c;->b:Lcom/bumptech/glide/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/bumptech/glide/i$c;->a:Llj;

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/bumptech/glide/i$c;->b:Lcom/bumptech/glide/i;

    monitor-enter p1

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/i$c;->a:Llj;

    invoke-virtual {v0}, Llj;->d()V

    .line 3
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :goto_0
    return-void
.end method
