.class final Lfi0$a;
.super Lck0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfi0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field c:J


# direct methods
.method constructor <init>(Lqk0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lck0;-><init>(Lqk0;)V

    return-void
.end method


# virtual methods
.method public H(Lxj0;J)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2, p3}, Lck0;->H(Lxj0;J)V

    .line 2
    iget-wide v0, p0, Lfi0$a;->c:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Lfi0$a;->c:J

    return-void
.end method
