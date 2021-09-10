.class public Lt30;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls30;


# instance fields
.field public final a:Lp30;

.field public final b:Lr30;

.field public final c:Lq30;

.field public final d:J


# direct methods
.method public constructor <init>(JLp30;Lr30;Lq30;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lt30;->d:J

    .line 3
    iput-object p3, p0, Lt30;->a:Lp30;

    .line 4
    iput-object p4, p0, Lt30;->b:Lr30;

    .line 5
    iput-object p5, p0, Lt30;->c:Lq30;

    return-void
.end method


# virtual methods
.method public a()Lq30;
    .locals 1

    .line 1
    iget-object v0, p0, Lt30;->c:Lq30;

    return-object v0
.end method

.method public b()Lr30;
    .locals 1

    .line 1
    iget-object v0, p0, Lt30;->b:Lr30;

    return-object v0
.end method
