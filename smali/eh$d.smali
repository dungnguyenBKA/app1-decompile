.class Leh$d;
.super Leh;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
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
    .locals 0

    .line 1
    sget-object p1, Leh$e;->c:Leh$e;

    return-object p1
.end method

.method public b(IIII)F
    .locals 0

    const/high16 p1, 0x3f800000    # 1.0f

    return p1
.end method
