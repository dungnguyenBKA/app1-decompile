.class abstract Lfu;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfu$a;
    }
.end annotation


# static fields
.field static final a:Lfu;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcu$b;

    invoke-direct {v0}, Lcu$b;-><init>()V

    const-wide/32 v1, 0xa00000

    .line 2
    invoke-virtual {v0, v1, v2}, Lcu$b;->f(J)Lfu$a;

    const/16 v1, 0xc8

    .line 3
    invoke-virtual {v0, v1}, Lfu$a;->d(I)Lfu$a;

    const/16 v1, 0x2710

    .line 4
    invoke-virtual {v0, v1}, Lfu$a;->b(I)Lfu$a;

    const-wide/32 v1, 0x240c8400

    .line 5
    invoke-virtual {v0, v1, v2}, Lfu$a;->c(J)Lfu$a;

    const v1, 0x14000

    .line 6
    invoke-virtual {v0, v1}, Lfu$a;->e(I)Lfu$a;

    .line 7
    invoke-virtual {v0}, Lfu$a;->a()Lfu;

    move-result-object v0

    sput-object v0, Lfu;->a:Lfu;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract a()I
.end method

.method abstract b()J
.end method

.method abstract c()I
.end method

.method abstract d()I
.end method

.method abstract e()J
.end method
