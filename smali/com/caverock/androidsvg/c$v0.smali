.class public Lcom/caverock/androidsvg/c$v0;
.super Lcom/caverock/androidsvg/c$z0;
.source "SourceFile"

# interfaces
.implements Lcom/caverock/androidsvg/c$a1;
.implements Lcom/caverock/androidsvg/c$m;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caverock/androidsvg/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "v0"
.end annotation


# instance fields
.field public r:Landroid/graphics/Matrix;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/caverock/androidsvg/c$z0;-><init>()V

    return-void
.end method


# virtual methods
.method public k(Landroid/graphics/Matrix;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/caverock/androidsvg/c$v0;->r:Landroid/graphics/Matrix;

    return-void
.end method
