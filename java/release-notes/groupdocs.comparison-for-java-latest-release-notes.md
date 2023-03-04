---
id: groupdocs-comparison-for-java-latest-release-notes
url: comparison/java/groupdocs-comparison-for-java-latest-release-notes
title: Latest release (March 2023)
weight: 1
description: ""
keywords:
productName: GroupDocs.Comparison for Java
hideChildren: False
---
{{< alert style="info" >}}This page contains release notes for GroupDocs.Comparison for Java 23.3{{< /alert >}}

There are 5 bug fixes in this release.

## Full list of changes in this release

| ID				  | Summary																		   | Category	 |
|---------------------|--------------------------------------------------------------------------------|-------------|
| COMPARISONNET-3228  | Exception when comparing PDF files											   | Bug		 |
| COMPARISONNET-3254  | Comparison of characters with ruby											   | Bug		 |
| COMPARISONNET-2450  | Fixed Header/Footer Comparison issue in PDF									   | Bug		 |
| COMPARISONNET-3220  | Annotations are not displayed correctly in the resulting PDF file			   | Bug		 |
| COMPARISONJAVA-943 | Chart name comparison issue in PDF      | Bug		 |
| COMPARISONJAVA-1528 | 'null' is a part of source and target texts of ChageInfo for some formats      | Bug		 |

## Major Features

* Improved comparison of PDF files
* Improved the resulting PDF file creation
* Improved comparison of image



## Public API and Backward Incompatible Changes

1. [MergeType](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison.cells.style/mergetype/) changed:
	* Type changed from class to enumeration
	* Constants type changed from `int` to the enumeration type
	* Constants renamed:
| Old name | New name |
|-------------|-------------|
| Horizontal | HORIZONTAL |
| None | NONE |
| Range | RANGE |
| Vertical | VERTICAL |

2. The [CompareOptions](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/compareoptions/) class changed:
	* The return type of the [getComparisonType](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/compareoptions/#getComparisonType--) method changed from `int` to `com.groupdocs.comparison.options.enums.ComparisonType`
	* The parameter type of the [setComparisonType](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/compareoptions/#setComparisonType-com.groupdocs.comparison.options.enums.ComparisonType-) method changed from `int` to `com.groupdocs.comparison.options.enums.ComparisonType`
	* The return type of the [getDetalisationLevel](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/compareoptions/#getDetalisationLevel--) method changed from `int` to `com.groupdocs.comparison.options.style.DetalisationLevel`
	* The parameter type of the [setDetalisationLevel](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/compareoptions/#setDetalisationLevel-com.groupdocs.comparison.options.style.DetalisationLevel-) method changed from `int` to `com.groupdocs.comparison.options.style.DetalisationLevel`
	* The return type of the [getPaperSize](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/compareoptions/#getPaperSize--) method changed from `int` to `com.groupdocs.comparison.options.enums.PaperSize`
	* The parameter type of the [setPaperSize](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/compareoptions/#setPaperSize-com.groupdocs.comparison.options.enums.PaperSize-) method changed from `int` to `com.groupdocs.comparison.options.enums.PaperSize`
	* The return type of the [getPasswordSaveOption](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/compareoptions/#getPasswordSaveOption--) method changed from `int` to `com.groupdocs.comparison.options.enums.PasswordSaveOption`
	* The return type of method [setPasswordSaveOption](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/compareoptions/#setPasswordSaveOption-com.groupdocs.comparison.options.enums.PasswordSaveOption-) method changed from `int` to `com.groupdocs.comparison.options.enums.PasswordSaveOption`

3. [ComparisonType](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison.options.enums/comparisontype/) changed:
	* Type changed from class to enumeration
	* Constants type changed from `int` to the enumeration type
	* Constants renamed:
| Old name     | New name     |
|--------------|--------------|
| Text         | TEXT         |	 
| Slides       | SLIDES       |	 
| Words        | WORDS        |	 
| Cells        | CELLS        |	 
| Pdf          | PDF          |	 
| Imaging      | IMAGING      |	 
| Email        | EMAIL        |	 
| Note         | NOTE         |	 
| Html         | HTML         |	 
| Diagram      | DIAGRAM      |	 
| Different    | DIFFERENT    |	 
| Undefined    | UNDEFINED    |	 
| Svg          | SVG          |

4. [MetadataType](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison.options.enums/metadatatype/) changed:
	* Type changed from class to enumeration
	* Constants type changed from `int` to the enumeration type
	* Constants renamed:
| Old name     | New name     |
|--------------|--------------|
| Default      | DEFAULT      |
| Source       | SOURCE       |
| Target       | TARGET       |
| FileAuthor   | FILE_AUTHOR  |

5. [PaperSize](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison.options.enums/papersize/) changed:
	* Type changed from class to enumeration
	* Constants type changed from `int` to the enumeration type

6. [PasswordSaveOption](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison.options.enums/passwordsaveoption/) changed:
	* Type changed from class to enumeration
	* Constants type changed from `int` to the enumeration type
	* Constants renamed:
| Old name     | New name     |
|--------------|--------------|
| None         | NONE         |
| Source       | SOURCE       |
| Target       | TARGET       |
| User         | USER         |


7. [PreviewFormats](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison.options.enums/previewformats/) changed:
	* Type changed from class to enumeration
	* Constants type changed from `int` to the enumeration type

8. The [GetChangeOptions](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/getchangeoptions/) class changed:
	* The return type of the [getFilter](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/getchangeoptions/#getFilter--) method changed from `int` to `com.groupdocs.comparison.result.ChangeType`
	* The parameter type of the [setFilter](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/getchangeoptions/#setFilter-com.groupdocs.comparison.result.ChangeType-) method changed from `int` to `com.groupdocs.comparison.result.ChangeType`

9. The [PreviewOptions](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/previewoptions/) class changed:
	* The return type of the [getPreviewFormat](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/previewoptions/#getPreviewFormat--) method changed from `int` to `com.groupdocs.comparison.options.enums.PreviewFormats`
	* The parameter type of the [setPreviewFormat](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison.options/previewoptions/#setPreviewFormat-com.groupdocs.comparison.options.enums.PreviewFormats-) method changed from `int` to `com.groupdocs.comparison.options.enums.PreviewFormats`

10. The [SaveOptions](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison.options.save/saveoptions/) class changed:
	* The return type of the [getCloneMetadataType](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison.options.save/saveoptions/#getCloneMetadataType--) method changed from `int` to `com.groupdocs.comparison.options.enums.MetadataType`
	* The parameter type of the [setCloneMetadataType](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison.options.save/saveoptions/#setCloneMetadataType-com.groupdocs.comparison.options.enums.MetadataType-) method changed from `int` to `com.groupdocs.comparison.options.enums.MetadataType`

11. [DetalisationLevel](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison.options.style/detalisationlevel/) changed:
	* Type changed from class to enumeration
	* Constants type changed from `int` to the enumeration type
	* Constants were renamed:
| Old name	   | New name	  |
|--------------|--------------|
| Low		   | LOW		  |
| Middle	   | MIDDLE	      |
| High		   | HIGH		  |

12. The [ChangeInfo](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison.result/changeinfo/) class changed:
	* The return type of the [getComparisonAction](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison.result/changeinfo/#getComparisonAction--) method changed from `int` to `com.groupdocs.comparison.result.ComparisonAction`
	* The parameter type of the [setComparisonAction](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison.result/changeinfo/#setComparisonAction-com.groupdocs.comparison.result.ComparisonAction-) method changed from `int` to `com.groupdocs.comparison.result.ComparisonAction`
	* The return type of the [getType](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison.result/changeinfo/#getType--) method changed from `int` to `com.groupdocs.comparison.result.ChangeType`

13. [ChangeType](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison.result/changetype/) changed:
	* Type changed from class to enumeration
	* Constants type changed from `int` to the enumeration type
	* Constants renamed:
| Old name		    | New name			  |
|-------------------|---------------------|
| None			    | NONE				  | 
| Modified		    | MODIFIED			  |
| Inserted		    | INSERTED			  |
| Deleted		    | DELETED		      |
| Added			    | ADDED			      |
| NotModified	    | NOT_MODIFIED		  |
| StyleChanged	    | STYLE_CHANGED	      |
| Resized		    | RESIZED			  |
| Moved			    | MOVED			      |
| MovedAndResized   | MOVED_AND_RESIZED   |
| ShiftedAndResized | SHIFTED_AND_RESIZED |

14. [ComparisonAction](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison.result/comparisonaction/) changed:
	* Type changed from class to enumeration
	* Constants type changed from `int` to the enumeration type
	* Constants renamed:
| Old name          | New name            |
|-------------------|---------------------|
| None              | NONE                |
| Accept            | ACCEPT              |
| Reject            | REJECT              |

15. [RevisionType](https://reference.groupdocs.com/comparison/java/com.groupdocs.comparison.words.revision/revisiontype/) changed:
	* Type changed from class to enumeration
	* Constants type changed from int to the enumeration type
	* Constants renamed:
| Old name              | New name                |
|-----------------------|-----------------------  |
| Insertion             | INSERTION               |
| Deletion              | DELETION                |
| FormatChange          | FORMAT_CHANGE           |
| StyleDefinitionChange | STYLE_DEFINITION_CHANGE |
| Moving                | MOVING                  |