.class Lwd$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltd$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field private final a:Laf$a;

.field private volatile b:Laf;


# direct methods
.method constructor <init>(Laf$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lwd$c;->a:Laf$a;

    return-void
.end method


# virtual methods
.method public a()Laf;
    .locals 1

    .line 1
    iget-object v0, p0, Lwd$c;->b:Laf;

    if-nez v0, :cond_2

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p0, Lwd$c;->b:Laf;

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lwd$c;->a:Laf$a;

    check-cast v0, Ldf;

    invoke-virtual {v0}, Ldf;->a()Laf;

    move-result-object v0

    iput-object v0, p0, Lwd$c;->b:Laf;

    .line 5
    :cond_0
    iget-object v0, p0, Lwd$c;->b:Laf;

    if-nez v0, :cond_1

    .line 6
    new-instance v0, Lbf;

    invoke-direct {v0}, Lbf;-><init>()V

    iput-object v0, p0, Lwd$c;->b:Laf;

    .line 7
    :cond_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 8
    :cond_2
    :goto_0
    iget-object v0, p0, Lwd$c;->b:Laf;

    return-object v0
.end method
