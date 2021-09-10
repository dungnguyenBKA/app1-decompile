.class final Linshot/collage/adconfig/h$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linshot/collage/adconfig/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field private a:Landroid/view/View;

.field private b:Lpb0;

.field private c:Ltb0;

.field private d:J

.field private e:J

.field private f:Linshot/collage/adconfig/i;


# direct methods
.method public constructor <init>(Linshot/collage/adconfig/i;)V
    .locals 1

    const-string v0, "type"

    invoke-static {p1, v0}, Lgg0;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linshot/collage/adconfig/h$b;->f:Linshot/collage/adconfig/i;

    return-void
.end method


# virtual methods
.method public final a()Lpb0;
    .locals 1

    .line 1
    iget-object v0, p0, Linshot/collage/adconfig/h$b;->b:Lpb0;

    return-object v0
.end method

.method public final b()Ltb0;
    .locals 1

    .line 1
    iget-object v0, p0, Linshot/collage/adconfig/h$b;->c:Ltb0;

    return-object v0
.end method

.method public final c()J
    .locals 2

    .line 1
    iget-wide v0, p0, Linshot/collage/adconfig/h$b;->e:J

    return-wide v0
.end method

.method public final d()J
    .locals 2

    .line 1
    iget-wide v0, p0, Linshot/collage/adconfig/h$b;->d:J

    return-wide v0
.end method

.method public final e()Linshot/collage/adconfig/i;
    .locals 1

    .line 1
    iget-object v0, p0, Linshot/collage/adconfig/h$b;->f:Linshot/collage/adconfig/i;

    return-object v0
.end method

.method public final f()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Linshot/collage/adconfig/h$b;->a:Landroid/view/View;

    return-object v0
.end method

.method public final g(Lpb0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Linshot/collage/adconfig/h$b;->b:Lpb0;

    return-void
.end method

.method public final h(Ltb0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Linshot/collage/adconfig/h$b;->c:Ltb0;

    return-void
.end method

.method public final i(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Linshot/collage/adconfig/h$b;->e:J

    return-void
.end method

.method public final j(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Linshot/collage/adconfig/h$b;->d:J

    return-void
.end method

.method public final k(Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Linshot/collage/adconfig/h$b;->a:Landroid/view/View;

    return-void
.end method
