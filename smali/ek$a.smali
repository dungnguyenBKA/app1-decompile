.class final enum Lek$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lek;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lek$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lek$a;

.field public static final enum c:Lek$a;

.field public static final enum d:Lek$a;

.field public static final enum e:Lek$a;

.field public static final enum f:Lek$a;

.field public static final enum g:Lek$a;

.field private static final synthetic h:[Lek$a;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 1
    new-instance v0, Lek$a;

    const-string v1, "PENDING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lek$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lek$a;->b:Lek$a;

    .line 2
    new-instance v1, Lek$a;

    const-string v3, "RUNNING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lek$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lek$a;->c:Lek$a;

    .line 3
    new-instance v3, Lek$a;

    const-string v5, "WAITING_FOR_SIZE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lek$a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lek$a;->d:Lek$a;

    .line 4
    new-instance v5, Lek$a;

    const-string v7, "COMPLETE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lek$a;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lek$a;->e:Lek$a;

    .line 5
    new-instance v7, Lek$a;

    const-string v9, "FAILED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lek$a;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lek$a;->f:Lek$a;

    .line 6
    new-instance v9, Lek$a;

    const-string v11, "CLEARED"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lek$a;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lek$a;->g:Lek$a;

    const/4 v11, 0x6

    new-array v11, v11, [Lek$a;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    .line 7
    sput-object v11, Lek$a;->h:[Lek$a;

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

.method public static valueOf(Ljava/lang/String;)Lek$a;
    .locals 1

    .line 1
    const-class v0, Lek$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lek$a;

    return-object p0
.end method

.method public static values()[Lek$a;
    .locals 1

    .line 1
    sget-object v0, Lek$a;->h:[Lek$a;

    invoke-virtual {v0}, [Lek$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lek$a;

    return-object v0
.end method
