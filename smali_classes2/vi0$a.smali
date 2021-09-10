.class Lvi0$a;
.super Lqh0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvi0;->F0(ILqi0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:I

.field final synthetic d:Lqi0;

.field final synthetic e:Lvi0;


# direct methods
.method varargs constructor <init>(Lvi0;Ljava/lang/String;[Ljava/lang/Object;ILqi0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lvi0$a;->e:Lvi0;

    iput p4, p0, Lvi0$a;->c:I

    iput-object p5, p0, Lvi0$a;->d:Lqi0;

    invoke-direct {p0, p2, p3}, Lqh0;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lvi0$a;->e:Lvi0;

    iget v1, p0, Lvi0$a;->c:I

    iget-object v2, p0, Lvi0$a;->d:Lqi0;

    .line 2
    iget-object v0, v0, Lvi0;->w:Lbj0;

    invoke-virtual {v0, v1, v2}, Lbj0;->k0(ILqi0;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3
    :catch_0
    iget-object v0, p0, Lvi0$a;->e:Lvi0;

    invoke-static {v0}, Lvi0;->j(Lvi0;)V

    :goto_0
    return-void
.end method
