.class public Lcom/caverock/androidsvg/c$n;
.super Lcom/caverock/androidsvg/c$o0;
.source "SourceFile"

# interfaces
.implements Lcom/caverock/androidsvg/c$m;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caverock/androidsvg/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "n"
.end annotation


# instance fields
.field public o:Ljava/lang/String;

.field public p:Lcom/caverock/androidsvg/c$o;

.field public q:Lcom/caverock/androidsvg/c$o;

.field public r:Lcom/caverock/androidsvg/c$o;

.field public s:Lcom/caverock/androidsvg/c$o;

.field public t:Landroid/graphics/Matrix;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/caverock/androidsvg/c$o0;-><init>()V

    return-void
.end method


# virtual methods
.method public k(Landroid/graphics/Matrix;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/caverock/androidsvg/c$n;->t:Landroid/graphics/Matrix;

    return-void
.end method
