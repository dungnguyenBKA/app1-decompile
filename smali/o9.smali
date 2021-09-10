.class public Lo9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo9$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lo9$a;

.field private final c:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lo9$a;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lo9;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lo9;->b:Lo9$a;

    .line 4
    iput-boolean p3, p0, Lo9;->c:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/airbnb/lottie/g;Lz9;)Lb7;
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/airbnb/lottie/g;->k()Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "Animation contains merge paths but they are disabled."

    .line 2
    invoke-static {p1}, Lzb;->b(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_0
    new-instance p1, Lk7;

    invoke-direct {p1, p0}, Lk7;-><init>(Lo9;)V

    return-object p1
.end method

.method public b()Lo9$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lo9;->b:Lo9$a;

    return-object v0
.end method

.method public c()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lo9;->c:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "MergePaths{mode="

    .line 1
    invoke-static {v0}, Lic;->q(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lo9;->b:Lo9$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
