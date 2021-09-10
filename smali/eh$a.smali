.class Leh$a;
.super Leh;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Leh;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IIII)Leh$e;
    .locals 1

    .line 1
    sget-object v0, Leh$e;->c:Leh$e;

    invoke-virtual {p0, p1, p2, p3, p4}, Leh$a;->b(IIII)F

    move-result p1

    const/high16 p2, 0x3f800000    # 1.0f

    cmpl-float p1, p1, p2

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget-boolean p1, Leh;->g:Z

    if-eqz p1, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    sget-object v0, Leh$e;->b:Leh$e;

    :goto_0
    return-object v0
.end method

.method public b(IIII)F
    .locals 1

    .line 1
    sget-object v0, Leh;->a:Leh;

    .line 2
    invoke-virtual {v0, p1, p2, p3, p4}, Leh;->b(IIII)F

    move-result p1

    const/high16 p2, 0x3f800000    # 1.0f

    .line 3
    invoke-static {p2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    return p1
.end method
