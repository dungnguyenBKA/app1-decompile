.class final Lvi0$k;
.super Lqh0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvi0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "k"
.end annotation


# instance fields
.field final c:Z

.field final d:I

.field final e:I

.field final synthetic f:Lvi0;


# direct methods
.method constructor <init>(Lvi0;ZII)V
    .locals 2

    .line 1
    iput-object p1, p0, Lvi0$k;->f:Lvi0;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 2
    iget-object p1, p1, Lvi0;->e:Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x2

    aput-object p1, v0, v1

    const-string p1, "OkHttp %s ping %08x%08x"

    invoke-direct {p0, p1, v0}, Lqh0;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    iput-boolean p2, p0, Lvi0$k;->c:Z

    .line 4
    iput p3, p0, Lvi0$k;->d:I

    .line 5
    iput p4, p0, Lvi0$k;->e:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 1
    iget-object v0, p0, Lvi0$k;->f:Lvi0;

    iget-boolean v1, p0, Lvi0$k;->c:Z

    iget v2, p0, Lvi0$k;->d:I

    iget v3, p0, Lvi0$k;->e:I

    invoke-virtual {v0, v1, v2, v3}, Lvi0;->E0(ZII)V

    return-void
.end method
