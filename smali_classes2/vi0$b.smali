.class Lvi0$b;
.super Lqh0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvi0;->G0(IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:I

.field final synthetic d:J

.field final synthetic e:Lvi0;


# direct methods
.method varargs constructor <init>(Lvi0;Ljava/lang/String;[Ljava/lang/Object;IJ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lvi0$b;->e:Lvi0;

    iput p4, p0, Lvi0$b;->c:I

    iput-wide p5, p0, Lvi0$b;->d:J

    invoke-direct {p0, p2, p3}, Lqh0;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lvi0$b;->e:Lvi0;

    iget-object v0, v0, Lvi0;->w:Lbj0;

    iget v1, p0, Lvi0$b;->c:I

    iget-wide v2, p0, Lvi0$b;->d:J

    invoke-virtual {v0, v1, v2, v3}, Lbj0;->n0(IJ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2
    :catch_0
    iget-object v0, p0, Lvi0$b;->e:Lvi0;

    invoke-static {v0}, Lvi0;->j(Lvi0;)V

    :goto_0
    return-void
.end method
