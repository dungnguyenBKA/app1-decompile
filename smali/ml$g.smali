.class public final enum Lml$g;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lml;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lml$g;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lml$g;

.field public static final enum c:Lml$g;

.field public static final enum d:Lml$g;

.field private static final synthetic e:[Lml$g;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lml$g;

    const-string v1, "PENDING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lml$g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lml$g;->b:Lml$g;

    .line 2
    new-instance v1, Lml$g;

    const-string v3, "RUNNING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lml$g;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lml$g;->c:Lml$g;

    .line 3
    new-instance v3, Lml$g;

    const-string v5, "FINISHED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lml$g;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lml$g;->d:Lml$g;

    const/4 v5, 0x3

    new-array v5, v5, [Lml$g;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Lml$g;->e:[Lml$g;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lml$g;
    .locals 1

    .line 1
    const-class v0, Lml$g;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lml$g;

    return-object p0
.end method

.method public static values()[Lml$g;
    .locals 1

    .line 1
    sget-object v0, Lml$g;->e:[Lml$g;

    invoke-virtual {v0}, [Lml$g;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lml$g;

    return-object v0
.end method
